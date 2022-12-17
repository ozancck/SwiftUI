//
//  CircularImageView.swift
//  FavoriteBook
//
//  Created by Ozan Çiçek on 17.12.2022.
//

import SwiftUI

struct CircularImageView: View {
    var imageName : String
    var body: some View {
            Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 6)
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.25)
        
        
            
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(imageName: "loki")
    }
}
