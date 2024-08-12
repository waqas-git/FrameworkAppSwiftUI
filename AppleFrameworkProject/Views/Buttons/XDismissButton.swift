//
//  XDismissButton.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 12/08/2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailview : Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailview = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width:40, height: 40)
            }.padding()
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailview: .constant(true))
    }
}
