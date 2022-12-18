//
//  CircularImage.swift
//  Landmark Book
//
//  Created by Ozan Çiçek on 18.12.2022.
//

import SwiftUI

struct CircularImage: View {
    var choosenImage : String
    var body: some View {
        Image(choosenImage)
            .resizable()
            .aspectRatio( contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 8)
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.2)
        
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(choosenImage: "istanbul")
    }
}
