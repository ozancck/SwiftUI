//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Ozan Çiçek on 16.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        NavigationView{
            VStack {
                Text("Favorite Book").font(.headline)
                List {
                    
                    ForEach(myFavorites) { favorite in
                        Section(header: HStack {
                         
                            Image(favorite.imageTitle)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15)
                                
                            
                            Text(favorite.title)
                            
                        }) {
                            ForEach(favorite.elements) { element in
                                NavigationLink(destination: DetailsView(choosenElement: element)){
                                    HStack {
                                        Image(element.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                        Text(element.name)
                                    }
                                }
                                
                            }
                        }

                    }
                    
                    
                    
                }.listStyle(.sidebar)
            }
            
            
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
