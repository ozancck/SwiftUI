//
//  Image+Modifiers.swift
//  Weather
//
//  Created by Ozan Çiçek on 25.07.2024.
//

import Foundation
import SwiftUI




struct RemoteImage: View {
    @StateObject private var loader: ImageLoader
    let placeholder: Image

    init(url: URL, placeholder: Image = Image(systemName: "photo")) {
        _loader = StateObject(wrappedValue: ImageLoader(url: url))
        self.placeholder = placeholder
    }
    
    var body: some View {
        content
            .onAppear(perform: loader.load)
    }
    
    private var content: some View {
        Group {
            if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                placeholder
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func load() {
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }
        task.resume()
    }
}

