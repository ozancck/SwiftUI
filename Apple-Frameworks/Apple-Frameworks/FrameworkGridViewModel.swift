//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ozan Çiçek on 3.09.2024.
//


import SwiftUI


class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
