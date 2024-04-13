//
//  MainTabView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 12/04/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WhisListIView()
                .tabItem { Label("Whislists", systemImage: "heart") }
            
            ProfileIView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        }
    }
}

#Preview {
    MainTabView()
}
