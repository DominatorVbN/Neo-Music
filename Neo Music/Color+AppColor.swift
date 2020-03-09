//
//  Color+AppColor.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let darkStart = Color(#colorLiteral(red: 0.1658963561, green: 0.1780574024, blue: 0.2050783336, alpha: 1))
    static let darkEnd = Color(#colorLiteral(red: 0.1127677336, green: 0.1294291914, blue: 0.1396596432, alpha: 1))
    static let backgroundColor = Color(#colorLiteral(red: 0.1797848046, green: 0.2006215751, blue: 0.2209952772, alpha: 1))
    static let secondaryBg = Color(#colorLiteral(red: 0.1477652788, green: 0.1654829681, blue: 0.1858361363, alpha: 1))
    static let redStart = Color(#colorLiteral(red: 0.7387344241, green: 0.1664682031, blue: 0.1497053504, alpha: 1))
    static let redEnd = Color(#colorLiteral(red: 0.860227406, green: 0.3060353398, blue: 0.1884755492, alpha: 1))
}


struct Color_Previews: PreviewProvider {
    static var previews: some View {
        Color.redEnd
    }
}
