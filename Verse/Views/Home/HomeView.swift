//
//  HomeView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var searchValue: String = ""
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("VERSE".localized)
                        .font(Font.bold(size: 20))
                        .foregroundColor(Palette.black.color)
                    Spacer()
                    
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Image("cs")
                            .resizable()
                            .frame(width: 37, height: 37)
                            .cornerRadius(20, corners: .allCorners)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Palette.black.color.opacity(0.5), lineWidth: 1)
                            )
                            .shadow(color: Palette.staticGray.color.opacity(0.4), radius: 3)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 4)
                
                VStack {
                    SearchBar(
                        searchValue: $searchValue,
                        placeholder: "HOME_SEARCH_BAR_PLACEHOLDER".localized
                    )
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        BooksLibraryView(books: viewModel.books)
                    }
                }
            }
            .padding(.bottom, 2)
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FavoritesBoxView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Favoritos")
                .font(Font.semibold(size: 14))
                .foregroundColor(Palette.black.color)
                .frame(maxWidth: .infinity, minHeight: 20, alignment: .leading)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
            Spacer()
            
        }
        .frame(maxWidth: .infinity, minHeight: 170)
        .cornerRadius(12, corners: .allCorners)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Palette.black.color, lineWidth: 1)
                .opacity(0.3)
        )
        .padding([.horizontal, .top])
    }
}
