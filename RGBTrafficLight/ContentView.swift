//
//  ContentView.swift
//  RGBTrafficLight
//
//  Created by Nikita Yashin on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(<#T##titleKey: LocalizedStringKey##LocalizedStringKey#>, action: <#T##() -> Void#>)
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 16) {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 150, height: 150)
                    .opacity(0.35)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 150, height: 150)
                    .opacity(0.35)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 150, height: 150)
                    .opacity(0.35)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Spacer()
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


