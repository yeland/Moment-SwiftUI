//
//  ImageLoader.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/5.
//

import Foundation
import UIKit
import Combine

final class ImageLoader: ObservableObject {
  @Published var image: UIImage?
  private var cancellable: Set<AnyCancellable> = .init()

  func loadImage(with urlString: String) {
    guard let url = URL(string: urlString) else {
      return
    }

    if let image: UIImage = MemoryCache.shared.value(urlString: urlString) {
      self.image = image
    }

    URLSession.shared.dataTaskPublisher(for: url)
      .map(\.data)
      .map(UIImage.init)
      .catch { error in return Just(nil) }
      .handleEvents(receiveOutput: { image in
        guard let image = image else { return }
        MemoryCache.shared.store(urlString: urlString, image: image)
      })
      .receive(on: DispatchQueue.main)
      .sink{ [weak self] in self?.image = $0 }
      .store(in: &cancellable)
  }
}
