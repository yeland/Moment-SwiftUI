//
//  ContentView.swift
//  moment
//
//  Created by Linxiao Wei on 2021/8/2.
//

import SwiftUI

struct ContentView: View {
  init() {
    UINavigationBar.appearance().backgroundColor = .gray
  }

  var body: some View {
    NavigationView {
      VStack {
        MomentsList()
      }
      .navigationBarTitle("Moment", displayMode: .inline)
    }
    .navigationViewStyle(StackNavigationViewStyle())
    .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
