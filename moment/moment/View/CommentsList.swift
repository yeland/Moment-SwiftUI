//
//  CommentsList.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/12.
//

import SwiftUI

struct CommentsList: View {
  let comments: [Comment]

  var body: some View {
    LazyVStack(alignment: .leading, spacing: 0) {
      ForEach(comments, id: \.content) { comment in
        CommentRow(comment: comment)
          .padding(.all, 3)
      }
    }
    .background(Color.init(red: 240/255, green: 240/255, blue: 240/255, opacity: 1))
  }
}
