//
//  RGBCircle.swift
//  RGBTrafficLight
//
//  Created by Никита on 14.05.2022.
//

import SwiftUI

struct RGBCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct RGBCircle_Previews: PreviewProvider {
    static var previews: some View {
        RGBCircle(color: .red, opacity: 0.3)
    }
}
