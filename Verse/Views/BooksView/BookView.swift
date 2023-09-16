//
//  BookView.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct BookView: View {
    let book: Book
    
    var body: some View {
        VStack(spacing: 2) {
            Image(book.image)
                .resizable()
                .scaledToFit()
                .frame(width: 110)
                .cornerRadius(8, corners: .allCorners)
            
            Text(book.title)
                .frame(width: 108, alignment: .leading)
                .font(Font.semibold(size: 12))
                .foregroundColor(Palette.black.color)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .padding(.top, 4)
            
            Text(book.author)
                .frame(width: 108, alignment: .leading)
                .font(Font.medium(size: 10))
                .foregroundColor(Palette.staticGray.color)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
        }
    }
}
