//
//  MomentsList.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import SwiftUI

struct MomentsList: View {
  var viewModel = MomentViewModel()
  var imageLoader = ImageLoader()

  var body: some View {
    List {
      MomentHeader(user: viewModel.user)
        .listRowInsets(EdgeInsets())
      ForEach(viewModel.validMoments) { moment in
        MomentRow(moment: moment)
      }
    }
    .ignoresSafeArea()
  }
}

struct MomentsList_Previews: PreviewProvider {
  static var previews: some View {
    MomentsList()
  }
}
