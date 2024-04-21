//
//  TabBar.swift
//
//
//  Created by Dmytro Chumakov on 20.04.2024.
//

import SwiftUI

public struct TabBar: View {
    public init() {}
    public var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Add")
                .tabItem {
                    Image(systemName: "plus.app")
                }
            Text("Likes")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}
