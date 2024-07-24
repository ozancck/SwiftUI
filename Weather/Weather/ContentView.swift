//
//  ContentView.swift
//  Weather
//
//  Created by Ozan Çiçek on 24.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: .white)
            
            
            VStack(spacing: 10) {
                CityTextView(cityName: "Gazayıntab, Ga")
                
                TemperatureAndIconView(iconName: "cloud.sun.fill", temperature: "32C")
                
                HStack(spacing: 20) {
                    WeatherCell(
                        imageName: "sun.max.fill",
                        dayName: "Mon",
                        temperatur: "32C")
                    
                    WeatherCell(
                        imageName: "cloud.sun.fill",
                        dayName: "Sat",
                        temperatur: "32C")
                    WeatherCell(
                        imageName: "cloud.sun.fill",
                        dayName: "Tues",
                        temperatur: "32C")
                    WeatherCell(
                        imageName: "sun.max.fill",
                        dayName: "Tues",
                        temperatur: "32C")
                    
                }
                
                Spacer()
                
                
                Button(action: {
                    
                }, label: {
                    Text("Change Day Time")
                        .textFontStyle(.H4Medium)
                        
                })
                .customButtonStyle(.primary)
                
                
                Spacer()
                
            
            }
            
            
      
                
                
            
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
            
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50 , height: 50)
            
            Text(temperatur)
                .textFontStyle(.H1Medium)
            
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [topColor, bottomColor]),
                       startPoint: .top,
                       endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .textFontStyle(.H1Bold)
            .padding()
    }
}

struct TemperatureAndIconView: View {
    var iconName: String
    var temperature: String
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            Text(temperature)
                .textFontStyle(.UltraBigBold)
            
        }
        .padding(.bottom, 20)
    }
}
