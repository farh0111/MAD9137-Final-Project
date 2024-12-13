//
//  AboutView.swift
//  MAD9037-WeatherApp
//
//  Created by Nafis Farhan on 2024-12-13.
//

import SwiftUI

struct AboutView: View {
    @State private var tapCount = 0
    @State private var showhiddenPhoto = false
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 30) {
                    // Profile Photo with tap gesture
                    Image(showhiddenPhoto ? "hiddenPic" : "profilePic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .onTapGesture {
                            tapCount += 1
                            if tapCount >= 3 {
                                withAnimation(.spring()) {
                                    showhiddenPhoto.toggle()
                                }
                                tapCount = 0
                            }
                        }
                  
                        .padding(.top, 30)
                    
                    // Profile Info
                    VStack(spacing: 15) {
                        Text("Nafis Farhan")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Email: farh0111@algonquinlive.com")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    // App Info
                    VStack(spacing: 15) {
                        Text("Version 1.0.0")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Text("© 2024 Nafis Farhan")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .padding()
            }
        }.toolbarBackground(.hidden)
            .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .environmentObject(WeatherViewModel())
    }
}
