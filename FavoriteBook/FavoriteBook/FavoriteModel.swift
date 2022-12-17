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
    var description : String
}





//songs

let ah = FavoriteElements(name: "Ah", imageName: "ah", artist: "Duman", description:"dumanin guzel sarkilarindan bir tanesi")
let believer = FavoriteElements(name: "Believer", imageName: "believer", artist: "Imagine Dragons", description: "danza kudurooooooo")
let buAskBeniYorar = FavoriteElements(name: "Bu Ask Beni Yorar", imageName: "blood", artist: "Duman", description: "danza kudurooooooo")

let favoriteSongs = FavoriteModel(title: "Favorite Songs", elements: [ah, believer, buAskBeniYorar], imageTitle: "song")


// heros

let robert = FavoriteElements(name: "IronMan", imageName: "ironman", artist: "Ronert DJ.", description: "danzapweofjwpofjpwoejfpwejfpweofjpwefj kuduroooofjopwejf;oweijgq;ewihjg;oewrkhgewroigjw;lerkjglwekrjgpkwerjgpewkrng;ewkrngwooo")
let spiderMan = FavoriteElements(name: "Spider Man", imageName: "spiderman", artist: "Andrew Garfield", description: "danza kudurooooooo")
let loki = FavoriteElements(name:"Loki", imageName: "loki", artist: "Tom H.", description: "danza kudurooooooo")

let favoriteHeros = FavoriteModel(title: "Favorite Heros", elements: [robert, spiderMan, loki], imageTitle: "hero")



let myFavorites = [favoriteSongs, favoriteHeros]



