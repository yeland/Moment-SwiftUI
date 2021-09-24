//
//  CommentRow.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/12.
//

import SwiftUI

struct CommentRow: View {
  let comment: Comment

  var body: some View {
    Text("\(comment.sender.nick): \(comment.content)")
      .font(.footnote)
  }
}
