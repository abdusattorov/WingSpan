//
//  Extensions.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 13/11/24.
//

import Foundation
import SwiftUI

// Extension for converting sRGB to Hex
extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
