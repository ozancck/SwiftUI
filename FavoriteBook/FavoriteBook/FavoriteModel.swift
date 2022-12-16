//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Ozan Çiçek on 16.12.2022.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    var imageTitle : String
    
}

struct FavoriteElements : Identifiable{
    
    var id = UUID()
    var name : String
    var imageName : String
    var artist : String
}



//songs

let ah = FavoriteElements(name: "Ah", imageName: "ah", artist: "Duman")
let believer = FavoriteElements(name: "Believer", imageName: "believer", artist: "Imagine Dragons")
let buAskBeniYorar = FavoriteElements(name: "Bu Ask Beni Yorar", imageName: "blood", artist: "Duman")

let favoriteSongs = FavoriteModel(title: "Favorite Songs", elements: [ah, believer, buAskBeniYorar], imageTitle: "song")


// heros

let robert = FavoriteElements(name: "IronMan", imageName: "ironman", artist: "Ronert DJ.")
let spiderMan = FavoriteElements(name: "Spider Man", imageName: "spiderman", artist: "Andrew Garfield")
let loki = FavoriteElements(name:"Loki", imageName: "loki", artist: "Tom H.")

let favoriteHeros = FavoriteModel(title: "Favorite Heros", elements: [robert, spiderMan, loki], imageTitle: "hero")



let myFavorites = [favoriteSongs, favoriteHeros]



