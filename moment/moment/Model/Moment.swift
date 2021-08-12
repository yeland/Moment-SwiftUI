//
//  Moment.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import Foundation
import SwiftUI

struct Moment: Codable, Identifiable {
  var id = UUID().uuidString

  var content: String?
  var images: [ImageModel]?
  var sender: Sender?
  var comments: [Comment]?

  private enum CodingKeys: Any, CodingKey {
    case content, images, sender, comments
  }
}

extension Moment {
  var photoGridData: PhotoGridData {
    guard let images = self.images else {
      return PhotoGridData()
    }

    if images.count == 1  {
      return PhotoGridData(numbersOfColumn: 1, width: 130, height: 130, images: images)
    } else if images.count == 4 {
      return  PhotoGridData(numbersOfColumn: 2, width: 110, height: 110, images: images)
    } else {
      return PhotoGridData(numbersOfColumn: 3, width: 90, height: 90, images: images)
    }
  }
}

struct ImageModel: Codable {
  var url: String
}

struct Sender: Codable {
  var username: String
  var nick: String
  var avatar: String
}

struct Comment: Codable {
  var content: String
  var sender: Sender
}

struct PhotoGridData {
  var numbersOfColumn: Int = 0
  var width: CGFloat = 0
  var height: CGFloat = 0
  var images: [ImageModel] = []
}
