//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Ozan Çiçek on 17.12.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenElement : FavoriteElements
    
    var body: some View {
        
        VStack(){
            
            Image(choosenElement.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .cornerRadius(50)
               // .position(x: UIScreen.main.bounds.midX, y:UIScreen.main.bounds.height * 0.09999999)
                
            
            Text(choosenElement.name).font(.largeTitle)
            Text(choosenElement.artist)
            
        }
        .padding(.bottom, UIScreen.main.bounds.midY * 0.3)
        
       
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenElement: robert)
    }
}
