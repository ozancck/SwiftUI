//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 11.03.2023.
//

import Alamofire
import Foundation

class JokesViewModel: ObservableObject {
    @Published var joke: [WelcomeElement] = []

    func fetchJokes() {
        AF.request("https://official-joke-api.appspot.com/random_joke", method: .get).responseDecodable(of: WelcomeElement.self) { response in
            switch response.result {
            case let .success(data):

                self.joke.removeAll()
                self.joke.append(data)

            case let .failure(error):
                print(error)
            }
        }
    }
}
