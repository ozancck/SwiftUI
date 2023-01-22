//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import Alamofire
import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []

    init() {
        refreshItemsFromNetwork()
    }

    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
