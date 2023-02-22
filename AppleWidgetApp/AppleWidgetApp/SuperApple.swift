//
//  SuperApple.swift
//  AppleWidgetApp
//
//  Created by Ozan Çiçek on 22.02.2023.
//

import Foundation

struct SuperApple: Identifiable, Codable {
    let image: String
    let name: String
    let model: String

    var id: String { image }
}

let macbook = SuperApple(image: "macbook", name: "Macbook", model: "Macbook Pro M1")

let appleW = SuperApple(image: "appleW", name: "Apple W", model: "SE")

let iphone = SuperApple(image: "iphone", name: "Iphone", model: "Iphone 11")


