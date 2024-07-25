//
//  Weather.swift
//  Weather
//
//  Created by Ozan Çiçek on 25.07.2024.
//

import Foundation

// Ana veri modeli
struct WeatherResponse: Codable {

    
    let success: Bool
    let city: String
    let result: [Weather]
}

// Hava durumu model sınıfı
struct Weather: Codable {
    
    let date: String
    let day: String
    let icon: String
    let description: String
    let status: String
    let degree: String
    let min: String
    let max: String
    let night: String
    let humidity: String
}
