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
        
        ZStack{
            ZStack(){
                Image(choosenElement.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 1.06)
                    .position(x: UIScreen.main.bounds.midX, y:UIScreen.main.bounds.height * 0.09999999)
                
                VStack(){
                
                    CircularImageView(imageName: choosenElement.imageName)
                    
                    Text(choosenElement.name).font(.largeTitle)
                    Text(choosenElement.artist)
                    Text(choosenElement.description)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 28.0)
                        .padding(.vertical, 28.0)
                   
                        
                        
                   
                    
                    
                }
                .padding(.top, 17.0)
                
                .frame(width: UIScreen.main.bounds.width * 1.033333, height: UIScreen.main.bounds.height * 0.6)
                    .background(Color(.white))
                    .cornerRadius(40)
                    
                
            }
        }
        
        
        
    }
        
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenElement: ah)
    }
}
