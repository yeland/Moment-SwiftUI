//
//  MomentViewModel.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import Foundation
import Combine

final class MomentViewModel: ObservableObject {
  let user: User = load("profile.json")
  private let moments: [Moment] = load("moments.json")
  var validMoments: [Moment] {
    return moments.filter { $0.sender != nil && ($0.images != nil || $0.content != nil) }
  }

  
}
