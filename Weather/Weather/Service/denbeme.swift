//
//  denbeme.swift
//  Weather
//
//  Created by Ozan Çiçek on 5.08.2024.
//

import SwiftUI

struct denbeme: View {
    var body: some View {
        TextField("Ozan Cicek", text: .constant(""))
            .padding()
            .frame(width: 300, height: 200, alignment: .top)
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(12)
           
            .padding()
    }
}

#Preview {
    denbeme()
}
