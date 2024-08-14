//
//  FrameworkDetailView.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 10/08/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    //@Binding var isShowingDetailview : Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            //XDismissButton(isShowingDetailview: $isShowingDetailview)
           // Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
               //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
                
        }.sheet(isPresented: $isShowingSafariView, content : {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //FrameworkDetailView(framework: MockData.framework1, isShowingDetailview: .constant(false))
        FrameworkDetailView(framework: MockData.framework1)

    }
}
