//
//  CardBackground.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
struct CardBackground<S: Shape>: View {
    var isHighlighted: Bool = false
    var shape: S
    var body: some View{
        shape
            .fill(Color.secondaryBg)
            .background(
                shape
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.darkStart, Color.darkEnd]), startPoint: .leading, endPoint: .trailing), lineWidth: 8)
        )
            .shadow(color: Color.gray.opacity(isHighlighted ? 0 : 0.1), radius: 10, x: -5, y: -5)
            .shadow(color: Color.darkEnd.opacity(isHighlighted ? 0 : 0.7), radius: 10, x: 5, y: 5)
    }
}
