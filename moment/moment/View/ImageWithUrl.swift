//
//  ImageWithUrl.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/10.
//

import Foundation
import SwiftUI

struct ImageWithURL: View {
  @ObservedObject var imageLoader: ImageLoader = ImageLoader()
  let url: String

  var body: some View {
    Image(uiImage: imageLoader.image ?? UIImage())
      .resizable()
      .scaledToFill()
      .onAppear(perform: {
        imageLoader.loadImage(with: url)
      })
  }
}
