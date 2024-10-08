//
//  FrameworkTitleView.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 12/08/2024.
//

import SwiftUI

struct FrameworkTitleView : View{
    var framework: Framework
    var body: some View{
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}


struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
