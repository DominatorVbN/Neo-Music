//
//  CardButtonStyle.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
struct CardButtonStyle<S: Shape>: ButtonStyle {
    var shape: S
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(CardBackground(isHighlighted: configuration.isPressed, shape: shape))
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}
