//
//  MomentHeader.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/5.
//

import SwiftUI

let viewModel = MomentViewModel()

struct MomentHeader: View {
  var user: User

  var body: some View {
    VStack(alignment: .trailing) {
      ImageWithURL(url: user.profileImage)
        .frame(height: 290)
      HStack {
        Text(user.nick)
          .foregroundColor(.white)
        ImageWithURL(url: user.avatar)
          .frame(width: 80, height: 80)
          .padding(.trailing)
      }
      .offset(y: -65)
      .padding(.bottom, -65)
    }
  }
}

struct MomentHeader_Previews: PreviewProvider {
  static var previews: some View {
    MomentHeader(user: viewModel.user)
  }
}
