//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Ozan Çiçek on 6.01.2023.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                    NavigationLink {
                        DetailsPage()
                    } label: {
                        ProductItem(product: Product(id: 1, name: "Barry", description: "blabla", price: 3, image: "cold-brew"))
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
