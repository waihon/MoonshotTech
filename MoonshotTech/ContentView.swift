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
    print("Creating a new CustomText: \(text)")
    self.text = text
  }
}

struct ScrollContentView: View {
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

struct ListContentView: View {
  var body: some View {
    List {
      ForEach(0..<100) {
        CustomText("Item \($0)")
          .font(.title)
      }
    }
  }
}

struct NavLinkContentView: View {
  var body: some View {
    NavigationView {
      List(0..<100) { row in
        NavigationLink(destination: Text("Detail \(row)")) {
          Text("Row \(row)")
        }
      }
      .navigationBarTitle("SwiftUI")
    }
  }
}

struct User: Codable {
  var name: String
  var address: Address
}

struct Address: Codable {
  var street: String
  var city: String
}

struct ContentView: View {
  var body: some View {
    Button("Decode JSON") {
      let input = """
      {
        "name": "Taylor Swift",
        "address": {
          "street": "555, Taylor Swift Avenue",
          "city": "Nashville"
        }
      }
      """
      
      // More code to come
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
