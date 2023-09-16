//
//  FavoritesView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct TransferView: View {
    @State private var barButtonSelected: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("TAB_BAR_TRANSFER_TITLE".localized)
                        .font(Font.bold(size: 20))
                        .foregroundColor(Palette.black.color)
                    Spacer()
                    NavigationButton(image: "square.and.arrow.up", selected: $barButtonSelected)
                }
                .padding(.init(top: 8, leading: 20, bottom: 8, trailing: 3))
                
                Spacer()
            }
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        TransferView()
//    }
//}
