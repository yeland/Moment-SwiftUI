//
//  PhotoGridView.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/11.
//

import SwiftUI

struct PhotoGridView: View {
  let photoGridData: PhotoGridData

  var body: some View {
    let columns: [GridItem] =
      Array(repeating: .init(.fixed(photoGridData.width)), count: photoGridData.numbersOfColumn)
    ScrollView {
      if photoGridData.images.count > 0 {
        LazyVGrid(columns: columns, alignment: .leading) {
          ForEach((0...(photoGridData.images.count - 1)), id: \.self) {
            ImageWithURL(url: photoGridData.images[$0].url)
              .frame(width: photoGridData.width ,height: photoGridData.height)
              .clipped()
              .padding(.trailing, 5)
          }
        }
      }
    }
  }
}
