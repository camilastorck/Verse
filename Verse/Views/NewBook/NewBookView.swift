//
//  NewBookView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct NewBookView: View {
    @State private var barButtonSelected: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Nuevo Libro")
                        .font(Font.bold(size: 20))
                        .foregroundColor(Palette.black.color)
                    Spacer()
                }
                .padding(.init(top: 8, leading: 20, bottom: 8, trailing: 20))
                
                Spacer()
            }
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
