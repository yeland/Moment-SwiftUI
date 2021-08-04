//
//  Landmark.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/3.
//

import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String

  private var imageName: String
  var image: Image {
    Image(imageName)
  }
}
