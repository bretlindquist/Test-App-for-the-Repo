//
//  AppTabView.swift
//  Test App for the Repo
//
//  Created by Bret Allan Lindquist on 2/1/24.
//

import SwiftUI

struct AppTabView: View {
  var body: some View {
    TabView {
      Text("Home")
        .tabItem { Label("Home",
        systemImage: "house")
          
        }
      Text("Profile")
        .tabItem {
            Label("Profile",
            systemImage: "person")
        }
      Text("Settings")
        .tabItem {
          Label("Settings",
                systemImage: "gear")
        }
    }
  }

}

struct AppTabViewPreview: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
