//
//  MomentRow.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import SwiftUI

private let viewModel = MomentViewModel()

struct MomentRow: View {
  var moment: Moment

  var body: some View {
    VStack(alignment: .leading) {
      Text(moment.sender?.nick ?? "")
        .fontWeight(.medium)
      Text(moment.content ?? "")
      Spacer()
    }
  }
}

struct MomentRow_Previews: PreviewProvider {
  static var previews: some View {
    MomentRow(moment: viewModel.moments[0])
      .previewLayout(.fixed(width: 300, height: 70))
    MomentRow(moment: viewModel.moments[1])
      .previewLayout(.fixed(width: 300, height: 70))
  }
}
