//
//  MomentsList.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/4.
//

import SwiftUI

struct MomentsList: View {
  var viewModel = MomentViewModel()

  var body: some View {
    List(viewModel.moments, id: \.id) { moment in
      MomentRow(moment: moment)
    }
  }
}

struct MomentsList_Previews: PreviewProvider {
  static var previews: some View {
    MomentsList()
  }
}
