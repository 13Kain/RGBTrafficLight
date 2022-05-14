//
//  ContentView.swift
//  RGBTrafficLight
//
//  Created by Nikita Yashin on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3

    @State private var buttonTitle = "START"

    @State private var status = 0

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 16) {
                RGBCircle(color: .red, opacity: redLightOpacity)
                RGBCircle(color: .yellow, opacity: yellowLightOpacity)
                RGBCircle(color: .green, opacity: greenLightOpacity)
                Spacer()
                Button(buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    status += 1
                    switch status {
                    case 1:
                        greenLightOpacity = 0.3
                        redLightOpacity = 1
                    case 2:
                        redLightOpacity = 0.3
                        yellowLightOpacity = 1
                    default:
                        yellowLightOpacity = 0.3
                        greenLightOpacity = 1
                        status = 0
                        }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


