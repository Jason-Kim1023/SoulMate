//
//  MainTabView.swift
//  SoulMate
//
//  Created by Jason Jihoon Kim on 5/16/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Groups")
                .tabItem {
                    Image(systemName: "circles.hexagongrid.fill")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.yellow)
    }
}

#Preview {
    MainTabView()
}
