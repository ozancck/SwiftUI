//
//  DetailView.swift
//  Landmark Book
//
//  Created by Ozan Çiçek on 18.12.2022.
//

import SwiftUI
import MapKit

struct DetailView: View {
    
    var choosenElement : LandMarkModel
    
    var body: some View {
        VStack {
            MapView(coordinate: choosenElement.locationCordinates)
                .edgesIgnoringSafeArea(.top)
                .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.35)
                
            
            VStack(alignment: .center){
                CircularImage(choosenImage: choosenElement.imageName)
                
                Text(choosenElement.placeName)
                    .font(.largeTitle)
                    
                    
                Text(choosenElement.detail)
            }
                .offset(y: UIScreen.main.bounds.height * -0.1)
                
                
            Spacer()
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(choosenElement: istanbul)
    }
}
