//
//  Insta_Gym_Version_2App.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//

import SwiftUI

@main
struct Insta_Gym_Version_2App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                Diet()
                    .tabItem {
                        Image(systemName: "doc.text")
                        Text("Diet")
                    }
                AddNewTraining()
                    .tabItem {
                        Image(systemName: "plus.circle")
                        Text("Add")
                    }
            }
        }
    }
}

