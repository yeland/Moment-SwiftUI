//
//  MomentRow.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import SwiftUI

struct MomentRow: View {
  var moment: Moment

  var body: some View {
    HStack(alignment: .top) {
      ImageWithURL(url: moment.sender?.avatar ?? "")
        .frame(width: 50, height: 50)
        .cornerRadius(8)
        .padding(.trailing, 5)
      VStack(alignment: .leading) {
        Text(moment.sender?.nick ?? "")
          .fontWeight(.medium)
          .padding(.bottom, 2)
        Text(moment.content ?? "")
        PhotoGridView(photoGridData: moment.photoGridData)
      }
    }
  }
}
