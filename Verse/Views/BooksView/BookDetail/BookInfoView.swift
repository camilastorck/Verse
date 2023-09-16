//
//  BookInfoView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct BookInfoView: View {
    let book: Book
    
    var body: some View {
        HStack(spacing: 12) {
            InfoColumn(
                icon: "star.fill",
                title: "BOOK_DETAILS_INFO_REVIEW_TITLE".localized,
                content: "\(book.review)"
            )
            
            SeparatorView()
            
            InfoColumn(
                title: "BOOK_DETAILS_INFO_PAGES_TITLE".localized,
                content: "\(book.pages)"
            )
            
            SeparatorView()
            
            InfoColumn(
                title: "BOOK_DETAILS_INFO_LANGUAGE_TITLE".localized,
                content: book.language
            )
        }
        .padding()
    }
}
