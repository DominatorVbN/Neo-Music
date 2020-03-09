//
//  LinearGradient+Variadic.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
