//
//  VerseButton.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct VerseButton: View {
    let title: String
    let type: VerseButtonType
    
    var body: some View {
        VStack {
            Text(title)
                .font(Font.semibold(size: 16))
                .foregroundColor(type == .primary ? Palette.white.color : Palette.black.color)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(type == .primary ? Palette.black.color : Palette.white.color)
                .cornerRadius(12, corners: .allCorners)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Palette.black.color, lineWidth: type == .primary ? 0 : 1)
                )
                .padding(.init(top: 2, leading: 25, bottom: 2, trailing: 25))
        }
    }
}

enum VerseButtonType {
    case primary
    case secondary
}
