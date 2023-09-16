//
//  Genres.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct Genres: View {
    let tapped: (BookGenre) -> Void
    
    var body: some View {
        VStack(spacing: 2) {
            /// Genre Buttons First Row.
            HStack {
                GenreButton(genre: .all) {
                    tapped(.all)
                }
                
                ForEach(BookGenre.allCases.filter { $0 != .all }.dropLast(2), id: \.self) { genre in
                    GenreButton(genre: genre) {
                        tapped(genre)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 3)
            .padding(.vertical, 6)
            
            /// Genre Buttons Second Row.
            HStack {
                ForEach(BookGenre.allCases.dropFirst(5), id: \.self) { genre in
                    GenreButton(genre: genre) {
                        tapped(genre)
                    }
                }
                Spacer()
            }
            .padding([.leading, .bottom], 3)
        }
        .padding(.horizontal)
    }
}
