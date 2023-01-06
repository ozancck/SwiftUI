//
//  Product.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import Foundation

struct Product {
    
    var id : Int
    var name : String
    var description : String
    var price : Double
    var image : String
    
    
    var imageURL:URL {
        URL(string: "https://coffeelab.com.tr/product/\(self.image)")!
    }
    
    
}
