//
//  AppleView.swift
//  AppleWidgetApp
//
//  Created by Ozan Çiçek on 24.02.2023.
//

import SwiftUI

struct AppleView: View {
    let apple: SuperApple

    var body: some View {
        HStack() {
            CircularImageView(image: apple.image)
            Spacer()
            VStack {
                Text(apple.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                Text(apple.model)
                    .multilineTextAlignment(.center)
            }.frame(width: UIScreen.main.bounds.width * 0.5)
        }.frame(width: UIScreen.main.bounds.width * 0.7)
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView(apple: macbook)
    }
}
