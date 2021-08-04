//
//  User.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import Foundation

struct User: Codable {
  var profileImage: String
  var avatar: String
  var nick: String
  var username: String
  private enum CodingKeys: String, CodingKey {
    case profileImage = "profile-image"
    case avatar
    case nick
    case username
  }
}
