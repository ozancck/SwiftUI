//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
