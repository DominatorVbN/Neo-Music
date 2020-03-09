//
//  NeoDarkButtonStyle.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
struct NeoDarkButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(25)
        .contentShape(Circle())
        .background(
            DarkNeoBackground(isHighlighted: configuration.isPressed, shape: Circle())
        )
    }
}
