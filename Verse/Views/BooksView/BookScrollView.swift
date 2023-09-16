//
//  BookScrollView.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct BookScrollView: View {
    let books: [Book]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    ForEach(books) { book in
                        NavigationLink {
                            BookDetailView(book: book)
                        } label: {
                            BookView(book: book)
                        }
                    }
                }
            }
        }
        .padding()
    }
}
