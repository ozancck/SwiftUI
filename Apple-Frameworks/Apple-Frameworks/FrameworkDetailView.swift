//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ozan Çiçek on 3.09.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(Color(.label))
                    .frame(width: 44, height: 44)
            })
        }
        .padding()
        Spacer()
        FrameworkGridCell(framework: framework)
        Text(framework.description)
            .font(.body)
            .padding()
        Spacer()
        
        Button(action: {
            
        }, label: {
            AFButton(title: "Learn More")
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
