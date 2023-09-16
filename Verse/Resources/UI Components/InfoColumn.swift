//
//  InfoColumn.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct InfoColumn: View {
    var icon: String?
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Text(title)
                .font(Font.medium(size: 13))
                .foregroundColor(Palette.staticGray.color)
            
            if let icon {
                HStack {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                        .foregroundColor(Palette.orange.color)
                    
                    Text(content)
                        .font(Font.semibold(size: 14))
                        .foregroundColor(Palette.black.color)
                }
            } else {
                Text(content)
                    .font(Font.semibold(size: 14))
                    .foregroundColor(Palette.black.color)
            }
        }
    }
}
