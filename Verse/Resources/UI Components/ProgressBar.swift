//
//  ProgressBar.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct ProgressBar: View {
    let progress: CGFloat
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 330, height: 5)
                    .foregroundColor(Palette.staticGray.color)
                    .opacity(0.2)
                    .cornerRadius(12, corners: .allCorners)
                Rectangle()
                    .frame(maxWidth: progress*3.3)
                    .frame(height: 5, alignment: .leading)
                    .foregroundColor(Palette.black.color)
                    .cornerRadius(12, corners: .allCorners)
            }
            
            Text("\(Int(progress)) % Leído")
                .font(Font.medium(size: 14))
                .foregroundColor(Palette.staticGray.color)
                .frame(width: 320, alignment: .trailing)
                .multilineTextAlignment(.trailing)
        }
        .padding(.vertical)
    }
}
