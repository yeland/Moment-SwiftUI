//
//  Moment.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import Foundation

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
