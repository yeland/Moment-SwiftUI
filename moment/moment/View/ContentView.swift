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
      MomentsList()
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
