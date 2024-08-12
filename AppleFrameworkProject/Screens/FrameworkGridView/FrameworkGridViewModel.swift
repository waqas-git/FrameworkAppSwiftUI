//
//  FrameworkGridViewModel.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 11/08/2024.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    let columns : [GridItem]  =  [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
    ]
    
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView  = false
    
}
