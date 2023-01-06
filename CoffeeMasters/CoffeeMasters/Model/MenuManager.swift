//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import Foundation

class MenuManager: ObservableObject {
   @Published var menu : [Category] = [
    
    Category(name: "Hot Coffee", products: [
    
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
        Product(id: 0, name: "", description: "", price: 1, image: ""),
    
    
    ])
    
    ]
}
