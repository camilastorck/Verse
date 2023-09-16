//
//  BookContentView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct BookDetailContentView: View {
    let book: Book
    
    var body: some View {
        VStack(spacing: 4) {
            Text(book.title)
                .font(Font.semibold(size: 18))
                .foregroundColor(Palette.black.color)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding([.horizontal, .top], 32)
                .multilineTextAlignment(.center)
            
            Text("BOOK_DETAILS_AUTHOR_TITLE".localized(book.author))
                .font(Font.medium(size: 14))
                .foregroundColor(Palette.staticGray.color)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal, 20)
                .multilineTextAlignment(.center)
            
            BookInfoView(book: book)
            ProgressBar(progress: book.progress)
            
            HStack {
                Text("BOOK_DETAILS_CATEGORY_TITLE".localized)
                    .font(Font.medium(size: 14))
                    .foregroundColor(Palette.staticGray.color)
                
                GenreButton(allowsSelection: false, genre: book.genre)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 28)
            
            Text("BOOK_DETAILS_SUMMARY_TITLE".localized)
                .font(Font.semibold(size: 18))
                .foregroundColor(Palette.black.color)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 18, leading: 28, bottom: 0, trailing: 28))
            
            Text(book.summary)
                .font(Font.regular(size: 14))
                .foregroundColor(Palette.black.color)
                .lineSpacing(4)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 4, leading: 28, bottom: 2, trailing: 28))
            
            Spacer()
        }
        .background(Palette.white.color)
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .shadow(color: Palette.staticGray.color.opacity(0.06), radius: 5, x: 0, y: -4)
    }
}
