//
//  ContentViewModel.swift
//  Weather
//
//  Created by Ozan Çiçek on 25.07.2024.
//

import Foundation


class ContentViewModel: ObservableObject {
    @Published var weather: [Weather] = []
    @Published var city: String = ""
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private let weatherService = WeatherService()
    
    func getWeather() {
        self.isLoading = true
        self.errorMessage = nil
        
        weatherService.fetchWeather { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let weatherResponse):
                    self?.weather = weatherResponse.result
                    self?.city = weatherResponse.city
                    print("weather: \(weatherResponse.result)")
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                    print("error: \(error.localizedDescription)")
                }
            }
        }
    }
}
