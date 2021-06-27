//
//  ContentView.swift
//  MoonshotTech
//
//  Created by Waihon Yew on 27/06/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Image("SwiftUI")
      .frame(width: 300, height: 300)
      .clipped()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
