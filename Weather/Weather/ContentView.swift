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
            LinearGradient(gradient: Gradient(
            colors: [.blue, .white]),
            startPoint: .top,
            endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 10) {
                Text("Gazayıntab, GA")
                    .textFontStyle(.H1Bold)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    
                    Text("32C")
                        .textFontStyle(.UltraBigBold)
                        
                }
                .padding(.bottom, 20)
                
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
