//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 5.01.2023.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    
    var body: some View {
        ZStack{
            Image("BackgroundPattern")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFill()
            VStack{
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
                    
                
                
            }
            
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            
            Offer(title: "My Title", description: "my description")
                .previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
            
        }
            
    }
}
