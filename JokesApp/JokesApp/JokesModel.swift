//
//  JokesModel.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 11.03.2023.
//

import Foundation

struct WelcomeElement: Identifiable ,Decodable {
    
    let type: String
    let setup, punchline: String
    let id: Int
}
