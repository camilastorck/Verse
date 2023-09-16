//
//  TabBarItem.swift
//  Ribbit
//
//  Created by Camila Storck on 22/07/2023.
//

import SwiftUI

struct TabBarItem: View {
    let itemTitle: String
    let itemImageTitle: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Image(systemName: itemImageTitle)
                .resizable()
                .scaledToFit()
                .frame(width: 23)
                .foregroundColor(Palette.black.color)
            
            Text(itemTitle)
                .font(Font.medium(size: 9))
                .foregroundColor(Palette.black.color)
                .padding(.top, 2)
        }
        .frame(minWidth: 63, minHeight: 50)
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
