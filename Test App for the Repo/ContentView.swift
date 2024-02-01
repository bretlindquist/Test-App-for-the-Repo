//
//  ContentView.swift
//  Test App for the Repo
//
//  Created by Bret Allan Lindquist on 2/1/24.
//

import SwiftUI

struct ContentView: View {
  @State private var showMenu = false
  
  var body: some View {
    NavigationStack {
      List {
        NavigationLink("Mint", value: Color.mint)
        NavigationLink("Pink", value: Color.pink)
        NavigationLink("Teal", value: Color.teal)
      }
      .navigationDestination(for: Color.self) { color in
        Text(color.description)
      }
      .navigationTitle("Title")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button { showMenu.toggle() } label: {
            Image(systemName: "line.3.horizontal")
          }
        }
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        AppTabView()
    }
}
