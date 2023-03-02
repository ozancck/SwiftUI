//
//  ContentView.swift
//  AppleWidgetApp
//
//  Created by Ozan Çiçek on 22.02.2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    @AppStorage("apple", store: UserDefaults(suiteName: "group.com.ozancicek.AppleWidgetApp"))
    
    var appleData : Data = Data()
    
    let appleArray = [macbook, appleW, iphone]
    var body: some View {
        VStack {
            ForEach(appleArray) { apple in 
                AppleView(apple: apple).onTapGesture {
                    saveToDefaults(apple: apple)
                }
            }
        }
        .padding()
    }
    
    func saveToDefaults(apple : SuperApple){
        if let appleData = try? JSONEncoder().encode(apple) {
            self.appleData = appleData
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
