//
//  FrameworkGridCell.swift
//  Apple-Frameworks
//
//  Created by Ozan Çiçek on 30.07.2024.
//

import SwiftUI

struct FrameworkGridCell: View {
    
    @Binding var imageName: String
    @Binding var frameworkName: String
    
    var body: some View {
        VStack(spacing: 10){
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundStyle(.tint)
            
            Text(frameworkName)
                .bold()
        }
    }
}

#Preview {
    FrameworkGridCell(imageName: MockData.frameworks.first?.imageName, frameworkName: MockData.frameworks.first?.name)
}
