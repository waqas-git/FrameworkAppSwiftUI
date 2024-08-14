//
//  ContentView.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 08/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Framework")
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView){
//                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailview: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
