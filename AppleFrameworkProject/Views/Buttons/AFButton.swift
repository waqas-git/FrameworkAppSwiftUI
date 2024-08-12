//
//  AFButton.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 10/08/2024.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
             .font(.title2)
             .fontWeight(.semibold)
             .frame(width: 280, height: 50)
             .background(Color.red)
             .foregroundColor(Color.white)
             .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More")
    }
}
