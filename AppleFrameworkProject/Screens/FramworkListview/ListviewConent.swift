//
//  ListviewConent.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 12/08/2024.
//

import SwiftUI

struct ListviewConent: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailview: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Framework")
        }
        .accentColor(Color(.label))
    }
}

struct ListviewConent_Previews: PreviewProvider {
    static var previews: some View {
        ListviewConent()
    }
}
