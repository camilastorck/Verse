//
//  GenreButton.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct GenreButton: View {
    @State private var selected: Bool = false
    @State var allowsSelection: Bool = true
    
    let genre: BookGenre
    var tapped: (() -> Void)?
    
    var body: some View {
        VStack {
            Text(genre.name)
                .font(Font.medium(size: 10))
                .foregroundColor(selected ? Palette.white.color : Palette.black.color)
                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(selected ? Palette.black.color : Palette.white.color)
                .cornerRadius(12, corners: .allCorners)
                .frame(minWidth: 40, maxHeight: 22)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Palette.black.color, lineWidth: 1)
                        .opacity(0.5)
                )
        }
        .onAppear {
            selected = isSelected()
        }
        .onTapGesture {
            selected = isSelected()
            tapped?()
        }
    }
    
    private func isSelected() -> Bool {
        let lastGenreSelected = getSavedGenreSelection()
        return lastGenreSelected == genre
    }
    
    private func getSavedGenreSelection() -> BookGenre {
        if let data = UserDefaults.standard.object(forKey: "SELECTED_GENRE") as? Data,
           let genre = try? JSONDecoder().decode(BookGenre.self, from: data) {
             return genre
        }
        return .all
    }
}
