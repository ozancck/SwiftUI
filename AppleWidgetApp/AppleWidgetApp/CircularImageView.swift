//
//  CircularImageView.swift
//  AppleWidgetApp
//
//  Created by Ozan Çiçek on 22.02.2023.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : String
    var body: some View {
        
           
        
        ZStack {
            
            Circle().fill(Color.gray)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.4)
                .shadow(radius: 25)
            
            
            Image(image)
                .resizable()
                .scaleEffect(0.7)
                .aspectRatio(contentMode: .fit)
               
                .clipShape(Circle())
               
                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 5)
                )
                .shadow(radius: 15)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.4)
           
            
        }
               
                
                    
      
        
        
        
       
            
            
            
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: "macbook")
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5))
    }
}
