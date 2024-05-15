//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Matheus Pinheiro on 14/05/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURlString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject private var imageLoder = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoder.image)
            .onAppear {
                imageLoder.load(fromURlString: urlString)
            }
    }
}
