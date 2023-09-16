//
//  SearchBar.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchValue: String
    let placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 13, height: 13)
                .opacity(0.4)
                .padding(.leading, 14)
                .foregroundColor(Palette.staticGray.color)
            
            TextField(placeholder, text: $searchValue)
                .foregroundColor(Palette.staticGray.color)
                .font(Font.regular(size: 13))
        }
        .frame(maxWidth: .infinity, minHeight: 42)
        .background(Palette.white.color)
        .cornerRadius(12, corners: .allCorners)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Palette.black.color, lineWidth: 1)
                .opacity(0.3)
        )
        .padding(.horizontal)
    }
}
