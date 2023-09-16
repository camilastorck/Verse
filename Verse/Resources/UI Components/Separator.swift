//
//  Separator.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct SeparatorView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(maxWidth: 1, maxHeight: .infinity, alignment: .center)
                .padding(.vertical, 4)
                .foregroundColor(Palette.staticGray.color).opacity(0.3)
        }
    }
}
