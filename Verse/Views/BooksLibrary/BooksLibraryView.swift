//
//  BooksLibraryView.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct BooksLibraryView: View {
    @State private var selectedGenre: BookGenre = .all
    let books: [Book]
    
    private let layout = [
        GridItem(.fixed(120), spacing: 2),
        GridItem(.fixed(120), spacing: 2),
        GridItem(.fixed(120), spacing: 2)
    ]
    
    var body: some View {
        VStack {
            Text("BOOK_LIBRARY_TITLE".localized)
                .font(Font.semibold(size: 14))
                .foregroundColor(Palette.black.color)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.bottom, -4)
            
            Genres { genre in
                saveGenreSelection(genre: genre)
            }
            
            LazyVGrid(columns: layout, spacing: 16) {
                ForEach(getBooksFiltered(), id: \.self) { book in
                    NavigationLink {
                        BookDetailView(book: book)
                    } label: {
                        BookView(book: book)
                            .animation(
                                .spring(response: 0.6, dampingFraction: 1, blendDuration: 0.5),
                                value: selectedGenre
                            )
                    }
                }
            }
            .padding(.vertical, 6)
        }
        .padding(.top)
        .onAppear {
            selectedGenre = getSavedGenreSelection()
        }
    }
    
    private func getBooksFiltered() -> [Book] {
        let booksByGenre: [Book] = books.filter { $0.genre == selectedGenre }
        return selectedGenre == .all ? books : booksByGenre
    }
    
    private func saveGenreSelection(genre: BookGenre) {
        selectedGenre = genre
        
        if let encoded = try? JSONEncoder().encode(genre) {
            UserDefaults.standard.set(encoded, forKey: "SELECTED_GENRE")
        }
    }
    
    private func getSavedGenreSelection() -> BookGenre {
        if let data = UserDefaults.standard.object(forKey: "SELECTED_GENRE") as? Data,
           let genre = try? JSONDecoder().decode(BookGenre.self, from: data) {
             return genre
        }
        return .all
    }
}
