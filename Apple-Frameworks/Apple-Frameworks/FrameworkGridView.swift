//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Ozan Çiçek on 30.07.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),                                              GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.urlString){ framework in
                        FrameworkGridCell(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
       
        
    }
}

#Preview {
    FrameworkGridView()
}
