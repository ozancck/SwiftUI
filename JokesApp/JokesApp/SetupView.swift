//
//  SsetupView.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 11.03.2023.
//

import SwiftUI

struct SsetupView: View {
    @State var setup: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(setup).font(.title3)
            }
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding()
    }
}

struct SsetupView_Previews: PreviewProvider {
    static var previews: some View {
        SsetupView(setup: "bir gun ozan dsiye biri eve gitmis?")
    }
}
