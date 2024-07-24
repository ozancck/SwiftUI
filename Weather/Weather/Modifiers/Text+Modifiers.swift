//
//  Text+Modifiers.swift
//  Weather
//
//  Created by Ozan Çiçek on 24.07.2024.
//

import Foundation
import SwiftUI

enum TextFontStyle {
    case UltraBigBold
    
    case H1Bold
    case H1Medium
    case H1Light

    case H4Bold
    case H4Medium
    case H4Light

    var font: Font {
        switch self {
        //MARK: - H1
        case .H1Bold:
            return Font.custom("Helvetica Neue Bold", size: 32)
        case .H1Medium:
            return Font.custom("Helvetica Neue Medium", size: 32)
        case .H1Light:
            return Font.custom("Helvetica Neue Light", size: 32)
        case .UltraBigBold:
            return Font.custom("Helvetica Neue Bold", size: 64)
            

        //MARK: - H4
        case .H4Bold:
            return Font.custom("Helvetica Neue Bold", size: 12)
        case .H4Medium:
            return Font.custom("Helvetica Neue Medium", size: 12)
        case .H4Light:
            return Font.custom("Helvetica Neue Light", size: 12)
        }
    }
}

struct TextFontModifier: ViewModifier {
    var style: TextFontStyle

    func body(content: Content) -> some View {
        content
            .font(style.font)
            .foregroundColor(.white)
    }
}

extension View {
    func textFontStyle(_ style: TextFontStyle) -> some View {
        modifier(TextFontModifier(style: style))
    }
}
