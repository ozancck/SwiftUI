//
//  TextHeaderModifier.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 18.03.2023.
//

import Foundation
import SwiftUI

struct TextHeaderModifier : ViewModifier {
    enum HeaderType{
        case primary
        case secondary
        
        var font : Font {
            switch self {
            case .primary:
                return .largeTitle
                
            case .secondary:
                return .caption
            }
        }
        
        var foregroundColor: Color {
            switch self {
            case .primary:
                return .black
                
            case .secondary:
                return .purple
            }
        }
        
        
    }
    
    
    
    var headerType: HeaderType
    
    func body(content: Content) -> some View {
        content
            .font(headerType.font)
            .foregroundColor(headerType.foregroundColor)
         
    }
    
}
