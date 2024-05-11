//
//  MainTabBarView.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import SwiftUI

struct MainTabBarView: View {
    @State private var selectedTab: Int = 0
    @StateObject private var viewModel = ExploreViewModel()
    
    var body: some View {
        TabView {
            ExploreView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Explore")
                    }
                }
                .onAppear {
                    selectedTab = 0
                }
            FavoriteView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Explore")
                    }
                }
                .onAppear {
                    selectedTab = 1
                }
            Text("Trips")
                .tabItem {
                    VStack {
                        Image(systemName: "road.lanes")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        Text("Explore")
                    }
                }
                .onAppear {
                    selectedTab = 2
                }
            Text("Inbox")
                .tabItem {
                    VStack {
                        Image(systemName: "bubble")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Explore")
                    }
                }
                .onAppear {
                    selectedTab = 3
                }
            Text("More")
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Explore")
                    }
                }
                .onAppear {
                    selectedTab = 4
                }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    MainTabBarView()
}
