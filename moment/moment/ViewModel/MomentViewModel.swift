//
//  MomentViewModel.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import Foundation

final class MomentViewModel {
  let user: User = load("profile.json")
  let moments: [Moment] = load("moments.json")
}
