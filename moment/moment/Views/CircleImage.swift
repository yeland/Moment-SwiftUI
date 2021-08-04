//
//  CircleImage.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/3.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("flower")
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
