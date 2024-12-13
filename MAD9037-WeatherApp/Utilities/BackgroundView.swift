//  BackgroundView.swift
//  MAD9037-WeatherApp
//
//  Created by Nafis Farhan on 2024-12-13.
//

// background gradient overlay

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(red: 255/255, green: 240/255, blue: 220/255),
                Color(red: 35/255, green: 35/255, blue: 25/255)
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}
