//
//  ContentView.swift
//  Landmark Book
//
//  Created by Ozan Çiçek on 18.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("LandMark Book")
                List {
                    ForEach(places) { place in
                        NavigationLink(destination: DetailView(choosenElement: place)) {
                            HStack{
                                Image(place.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.height * 0.05)
                                    
                                Text(place.placeName)
                                    .font(.callout)
                                    .bold()
                            }
                        }
                        
                    }
                }.listStyle(.automatic)
            }
            

        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
