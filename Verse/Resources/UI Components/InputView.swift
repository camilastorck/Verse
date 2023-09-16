//
//  InputView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct InputView: View {
    let icon: Image
    let sectionTitle: String
    let fieldPrompt: String
    var isSecured: Bool = false
    
    @State var fieldWrapper: String
    
    var body: some View {
        Text(sectionTitle)
            .foregroundColor(Palette.black.color)
            .font(Font.regular(size: 12))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 32)
        
        HStack {
            icon
                .resizable()
                .scaledToFit()
                .frame(width: 13, height: 13)
                .opacity(0.4)
                .padding(.leading, 14)
                .foregroundColor(Palette.black.color)
            
            if isSecured {
                SecureField(fieldPrompt, text: $fieldWrapper)
                    .foregroundColor(Palette.staticGray.color)
                    .font(Font.regular(size: 13))
            } else {
                TextField(fieldPrompt, text: $fieldWrapper)
                    .foregroundColor(Palette.staticGray.color)
                    .font(Font.regular(size: 13))
            }
        }
        .frame(width: 340, height: 42)
        .background(Palette.white.color)
        .cornerRadius(12, corners: .allCorners)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Palette.black.color, lineWidth: 1)
                .opacity(0.3)
        )
        .padding(.bottom, 8)
    }
}
