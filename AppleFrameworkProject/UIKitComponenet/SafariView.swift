//
//  SafariView.swift
//  AppleFrameworkProject
//
//  Created by waqas ahmed on 11/08/2024.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable{
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context:
                                UIViewControllerRepresentableContext<SafariView>) {}
}
