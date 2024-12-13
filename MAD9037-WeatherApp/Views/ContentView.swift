//
//  ContentView.swift
//  MAD9037-WeatherApp
//
//  Created by Nafis Farhan on 2024-12-13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var weatherViewModel: WeatherViewModel

    var body: some View {
        MainTabView()
            .environmentObject(weatherViewModel)
    }
}

