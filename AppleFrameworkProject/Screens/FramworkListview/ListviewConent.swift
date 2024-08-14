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
        NavigationStack{
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Framework")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}

struct ListviewConent_Previews: PreviewProvider {
    static var previews: some View {
        ListviewConent()
    }
}
