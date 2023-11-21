//
//  Palette.swift
//  Verse
//
//  Created by Camila Storck on 02/06/2023.
//

import SwiftUI

enum Palette: String, CaseIterable {
    case black
    case white
    case orange
    case staticGray
}

extension Palette {
    var color: Color {
        guard Palette.allCases.contains(self) else {
            assertionFailure("Couldn´t find color \(self)")
            return Color(.clear)
        }
        return Color(self.rawValue, bundle: Bundle.main)
    }
}
