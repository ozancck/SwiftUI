//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import SwiftUI

struct ProductItem: View {
    var body: some View {
        VStack {
            Image("DummyImage")
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
                .clipped()
            
                
            HStack {
                VStack(alignment: .leading) {
                    Text("Product Name")
                        .font(.title3)
                        .bold()
                    Text("$ 4.25")
                        .font(.caption)

                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding()
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem()
    }
}
