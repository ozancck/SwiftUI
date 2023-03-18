//
//  ButtonModifier.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 18.03.2023.
//

import Foundation
import SwiftUI

struct ButtonModifier: ViewModifier {
    enum ButtonType {
        case primary
        case secondary

        var foreground: Color {
            switch self {
            case .primary:
                return .white
            case .secondary:
                return .black
            }
        }

        var bacground: Color {
            switch self {
            case .primary:
                return .black

            case .secondary:
                return .white
            }
        }
    }

    var buttonType: ButtonType
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(buttonType.bacground)
            .clipShape(RoundedRectangle(cornerRadius: 44))
            .foregroundColor(buttonType.foreground)
    }
}
