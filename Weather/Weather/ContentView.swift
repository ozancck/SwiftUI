//
//  ContentView.swift
//  Weather
//
//  Created by Ozan Çiçek on 24.07.2024.
//

import SwiftUI


struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    /// bu nedir kardeşim benim açıkla
    /// state değişkeni değiştiği zaman ilgili tasarım yeniden yüklenir. Sayfa yenilenir
    @State private var isNight = false

    var body: some View {
        ZStack {
            
           BackgroundView(isNight: isNight)

            VStack(spacing: 10) {
                
                HStack {
                    Spacer()
                    Toggle(isOn: $isNight) {
                        Image(systemName: isNight ? "moon.stars.fill" : "sun.max.fill")
                            .foregroundColor(isNight ? .white : .yellow)
                    }
                        .padding()
                        .tint(.gray)
                        
                        
                        
                        
                }
                if let weather = viewModel.weather.first {
                    CityTextView(cityName: viewModel.city, date: weather.date)
                }

                if let weather = viewModel.weather.first {
                    TemperatureAndIconView(iconName: weather.icon, temperature: weather.degree)
                }

                ExtractedView(weatherData: viewModel.weather)

                Spacer()
                
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
            }
        }
        .onAppear {
            viewModel.getWeather()
            print("weather: \(viewModel.weather)")
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherCell: View {
    var imageName: String
    var dayName: String
    var temperatur: String

    var body: some View {
        VStack {
            Text(dayName)
                .textFontStyle(.H4Bold)

            RemoteImage(url: URL(string: imageName)!, placeholder: Image(systemName: "photo"))
                .frame(width: 50, height: 50)

            Text(temperatur)
                .textFontStyle(.H4Bold)
        }
    }
}


struct BackgroundView: View {
    var isNight: Bool

    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [isNight ? .black : Color(.systemBlue), isNight ? .gray : Color(.lightGray)]),
        startPoint: .top,
        endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var date: String
    var body: some View {
        Text(cityName)
            .textFontStyle(.H1Bold)
            .padding()
    }
}

struct TemperatureAndIconView: View {
    var iconName: String!
    var temperature: String
    var body: some View {
        VStack {
            RemoteImage(url: URL(string: iconName)!, placeholder: Image(systemName: "photo"))
                .frame(width: 180, height: 180)

            Text(temperature)
                .textFontStyle(.UltraBigBold)
        }
        .padding(.bottom, 20)
    }
}

struct ExtractedView: View {
    var weatherData: [Weather]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(weatherData, id: \.date) { weather in

                    WeatherCell(
                        imageName: weather.icon,
                        dayName: weather.day,
                        temperatur: weather.degree)
                }
            }
        }
        .padding(.horizontal, 25)
    }
}
