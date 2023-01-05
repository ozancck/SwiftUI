//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 5.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            Text("Order Page")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order Page")
                }
            Text("Info Page")
                .tabItem {
                    Image(systemName: "info")
                    Text("Info Page")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
