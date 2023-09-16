//
//  BookDetailView.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct BookDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var setBookAsFavorite: Bool = false
    @State var book: Book
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationBar(type: .back) {
                        presentationMode.wrappedValue.dismiss()
                    }
                    NavigationButton(image: "heart", selected: $setBookAsFavorite)
                        .onTapGesture {
                            setBookAsFavorite.toggle()
                        }
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    Image(book.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12, corners: .allCorners)
                        .frame(width: 180, alignment: .center)
                        .padding(.vertical, 20)
                        .shadow(color: Palette.staticGray.color.opacity(0.5), radius: 4)
                    
                    BookDetailContentView(book: book)
                }
                
                VerseButton(title: "BOOK_DETAILS_MAIN_ACTION".localized, type: .primary)
                    .onTapGesture {
                        /// Open Book.
                    }
            }
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}
