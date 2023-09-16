//
//  Font+Extension.swift
//  Ribbit
//
//  Created by Camila Storck on 31/05/2023.
//

import SwiftUI

extension Font {
    static func regular(size: CGFloat) -> Font {
        return Font.custom(ContentFont.regular.rawValue, size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
        return Font.custom(ContentFont.medium.rawValue, size: size)
    }
    
    static func semibold(size: CGFloat) -> Font {
        return Font.custom(ContentFont.semibold.rawValue, size: size)
    }
    
    static func bold(size: CGFloat) -> Font {
        return Font.custom(ContentFont.bold.rawValue, size: size)
    }
    
    static func extrabold(size: CGFloat) -> Font {
        return Font.custom(ContentFont.extrabold.rawValue, size: size)
    }
    
    static func black(size: CGFloat) -> Font {
        return Font.custom(ContentFont.black.rawValue, size: size)
    }
}

enum ContentFont: String {
    case regular = "MontserratRoman-Regular"
    case medium = "MontserratRoman-Medium"
    case semibold = "MontserratRoman-SemiBold"
    case bold = "MontserratRoman-Bold"
    case extrabold = "MontserratRoman-ExtraBold"
    case black = "MontserratRoman-Black"
}
