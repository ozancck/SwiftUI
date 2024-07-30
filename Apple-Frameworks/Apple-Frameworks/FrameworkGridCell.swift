//
//  FrameworkGridCell.swift
//  Apple-Frameworks
//
//  Created by Ozan Çiçek on 30.07.2024.
//

import SwiftUI

struct FrameworkGridCell: View {
    
    let framework: Framework
    
   
    
    var body: some View {
        VStack(){
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundStyle(.tint)
            
            Text(framework.name)
                .font(.title2)
                
        }
        .padding()
    }
}


