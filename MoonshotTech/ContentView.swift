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

struct CustomText: View {
  var text: String
  
  var body: some View {
    Text(text)
  }
  
  init(_ text: String) {
    print("Creating a new CustomText")
    self.text = text
  }
}

struct ContentView: View {
  var body: some View {
    ScrollView(.vertical) {
      VStack(spacing: 10) {
        ForEach(0..<100) {
          CustomText("Item \($0)")
            .font(.title)
        }
      }
      .frame(maxWidth: .infinity)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
