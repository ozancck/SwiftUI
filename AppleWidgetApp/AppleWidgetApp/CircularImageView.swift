//
//  CircularImageView.swift
//  AppleWidgetApp
//
//  Created by Ozan Çiçek on 22.02.2023.
//

import SwiftUI

struct CircularImageView: View {
    var image: String
    var body: some View {
        ZStack {
            Circle().fill(Color("lightgray"))
                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.15)
                .shadow(radius: 5)

            Image(image)
                .resizable()
                .scaleEffect(0.7)
                .aspectRatio(contentMode: .fit)

                .clipShape(Circle())

                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 2)
                )
                .shadow(radius: 5)
                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.15)
        }
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: "macbook")
            .previewLayout(.fixed(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.16))
    }
}
