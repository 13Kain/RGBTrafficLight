//
//  ContentView.swift
//  RGBTrafficLight
//
//  Created by Nikita Yashin on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
            }
            .padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


