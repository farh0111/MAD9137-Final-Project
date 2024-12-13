//
//  MainTabView.swift
//  MAD9037-WeatherApp
//
//  Created by Nafis Farhan on 2024-12-13.
//


import SwiftUI

struct MainTabView: View {
    @StateObject private var weatherViewModel = WeatherViewModel()

    init() {
        let appearance = UITabBarAppearance()
        
        // transparent tab bar
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .clear

        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance

        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
    }

    var body: some View {
        TabView {
            CityListView()
                .environmentObject(weatherViewModel)
                .tabItem {
                    Image(systemName: "globe.americas")
                    Text("Cities")
                }

            SettingsView()
                .environmentObject(weatherViewModel)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(.white)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
