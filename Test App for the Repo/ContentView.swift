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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .navigationTitle("Title")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            Button { showMenu.toggle() }
          label: {
            Image(systemName: "line.3.horizontal")
          }
          }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
