//
//  Button+Modifiers.swift
//  Weather
//
//  Created by Ozan Çiçek on 24.07.2024.
//

import Foundation
import SwiftUI

enum ButtonStyleType {
    case primary
    case secondary
    case danger
    case elipsis

    var fontStyle: TextFontStyle {
        switch self {
        case .primary:
            return .H1Bold
        case .secondary:
            return .H1Medium
        case .danger:
            return .H1Bold
        case .elipsis:
            return .H4Medium
        }
    }

    var backgroundColor: Color {
        switch self {
        case .primary:
            return Color.blue
        case .secondary:
            return Color.gray
        case .danger:
            return Color.red
        case .elipsis:
            return Color.green
        }
    }

    var foregroundColor: Color {
        switch self {
        case .primary, .secondary:
            return Color.white
        case .danger:
            return Color.white
        case .elipsis:
            return Color.blue
        }
    }

    var cornerRadius: CGFloat {
        switch self {
        case .primary, .secondary:
            return 10

        case .danger:
            return 10

        case .elipsis:
            return 25
        }
    }
    
    
    //MARK: - Size
    
    var width: CGFloat {
        switch self {
        case .primary, .secondary:
            return UIScreen.main.bounds.width * 0.8
        case .danger:
            return UIScreen.main.bounds.width * 0.8
        case .elipsis:
            return UIScreen.main.bounds.width * 0.8

        }
    }
    
    var height: CGFloat {
        switch self {
        case .primary, .secondary:
            return 50
        case .danger:
            return 50
        case .elipsis:
            return 50
        }
    }
}

struct CustomButtonModifier: ViewModifier {
    var style: ButtonStyleType

    @State private var isPressed: Bool = false

    func body(content: Content) -> some View {
        content
            .textFontStyle(style.fontStyle)
            .frame(width: style.width, height: style.height)
            .background(style.backgroundColor)
            .foregroundColor(style.foregroundColor)
            .cornerRadius(style.cornerRadius)
            .opacity(isPressed ? 0.7 : 1.0)
            .scaleEffect(isPressed ? 0.95 : 1.0)
            .animation(.easeOut(duration: 0.2), value: isPressed)
            /* ios 17

             .onChange(of: isPressed) { newValue in
                 print("ozan")
             }
              */
            .onLongPressGesture(minimumDuration: 0.1, pressing: { pressing in
                self.isPressed = pressing
            }, perform: {})
    }
}

extension View {
    func customButtonStyle(_ style: ButtonStyleType) -> some View {
        modifier(CustomButtonModifier(style: style))
    }
}
