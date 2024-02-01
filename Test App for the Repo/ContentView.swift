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

    let color1 = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    
    NavigationStack {
      
      List {
        NavigationLink("Mint", value: Color.mint)
        NavigationLink("Pink", value: Color.pink)
        NavigationLink("Teal", value: Color.teal)
Text("Hello")
      }
      .navigationDestination(for: Color.self) { color in
        if color == Color.mint {
          VStack {
            Image(systemName: "smiley")
            Text("You Chose Correctly")
          }
        } else {
          VStack {
            Image(systemName: "sadface")
            Text("I'm Sorry, You chose Incorrectly")
          }
        }
        Text("More Text")
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
      
      Color.mint
                    .ignoresSafeArea()
      
    }
    
  }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        AppTabView()
    }
}
