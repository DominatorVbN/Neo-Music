//
//  PrimaryButtonStyle.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
struct PrimaryButtonStyle<S: Shape>: ButtonStyle{
    let shape: S
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding()
        .background(
            shape
                .fill(LinearGradient(Color.redStart.opacity(configuration.isPressed ? 0.5 : 1),Color.redEnd.opacity(configuration.isPressed ? 0.5 : 1)))
            
            .overlay(
                shape
                    .fill(LinearGradient(gradient: Gradient(colors:
                        configuration.isPressed ? [Color.redStart,Color.redEnd]: [Color.redEnd,Color.redStart]), startPoint: .top, endPoint: .bottom))
                .mask(
                    shape
                    .stroke(lineWidth: 6)
                )
                
            )
                .shadow(color: Color.redEnd.opacity(0.3), radius: configuration.isPressed ? 20 : 10, x: 0, y: 0)
        
        )
    }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View{
        Button(action: {
            
        }) {
            Text("Button")
                .foregroundColor(.white)
        }
        .buttonStyle(PrimaryButtonStyle(shape: Capsule()))
    }
}
