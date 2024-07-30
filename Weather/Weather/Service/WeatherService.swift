//
//  WeatherService.swift
//  Weather
//
//  Created by Ozan Çiçek on 25.07.2024.
//

import Foundation

class WeatherService {
    private let apiKey = "apikey 0EWoiAIXXDLCgm2FS0sLJj:0yreQJDlY9rV1wDIDBwLQj"
    private let baseURL = "https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=mugla"
    
    func fetchWeather(completion: @escaping (Result<WeatherResponse, Error>) -> Void) {
        guard let url = URL(string: baseURL) else { return }
        
        var request = URLRequest(url: url)
        request.addValue("apikey \(apiKey)", forHTTPHeaderField: "authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
                completion(.success(weatherResponse))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
