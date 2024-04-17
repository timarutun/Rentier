//
//  MainTabView.swift
//  RentApp
//
//  Created by Timur on 4/17/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        }

    }
}

#Preview {
    MainTabView()
}
