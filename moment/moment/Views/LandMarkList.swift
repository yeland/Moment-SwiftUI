//
//  LandMarkList.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    List(landmarks) { landmark in
      LandmarkRow(landmark: landmark)
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
