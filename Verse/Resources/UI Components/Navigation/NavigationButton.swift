//
//  NavigationButton.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct NavigationButton: View {
    let image: String
    @Binding var selected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: selected ? "\(image).fill" : image)
                .resizable()
                .scaledToFit()
                .frame(width: 15)
                .foregroundColor(selected ? Palette.orange.color : Palette.black.color)
                .padding(2)
        }
        .frame(width: 35, height: 35)
        .background(Palette.white.color)
        .cornerRadius(6, corners: .allCorners)
        .shadow(color: Palette.black.color.opacity(0.8), radius: 1)
        .padding(.trailing)
    }
}
