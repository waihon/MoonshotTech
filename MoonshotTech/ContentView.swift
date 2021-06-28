//
//  ContentView.swift
//  MoonshotTech
//
//  Created by Waihon Yew on 27/06/2021.
//

import SwiftUI

struct GeometryReaderView: View {
  var body: some View {
    VStack {
      GeometryReader { geo in
        Image("SwiftUI")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: geo.size.width)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
