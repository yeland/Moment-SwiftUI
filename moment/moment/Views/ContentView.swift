//
//  ContentView.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/2.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
          .foregroundColor(.black)
        HStack {
          Text("Joshua Tree National Park")
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
      }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
