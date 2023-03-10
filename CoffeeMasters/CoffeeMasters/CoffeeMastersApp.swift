//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 5.01.2023.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
