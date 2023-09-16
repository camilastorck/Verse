//
//  NavigationBar.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct NavigationBar: View {
    var title: String?
    let type: NavigationBarType
    var rightIcon: String?
    let backTapped: () -> Void
    var rightTapped: (() -> Void)?
    
    private var leftButtonImage: String? {
        switch type {
        case .back:
            return "chevron.backward"
        case .close:
            return "xmark"
        case .none:
            return nil
        }
    }
    
    var body: some View {
        HStack {
            Button {
                backTapped()
            } label: {
                if let image = leftButtonImage {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 8)
                        .tint(Palette.staticGray.color)
                        .padding(.trailing, 2)
                    
                }
            }
            .frame(width: 35, height: 35)
            .background(Palette.white.color)
            .cornerRadius(6, corners: .allCorners)
            .shadow(color: Palette.black.color.opacity(0.8), radius: 1)
            
            Spacer()
            
            Text(title ?? "")
                .font(Font.medium(size: 16))
                .foregroundColor(Palette.black.color)
                .padding(.trailing, 32)
            
            Spacer()
            
            if let rightIcon {
                Button {
                    rightTapped?()
                } label: {
                    Image(systemName: rightIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .tint(Palette.staticGray.color)
                }
                .frame(width: 35, height: 35)
                .background(Palette.white.color)
                .cornerRadius(6, corners: .allCorners)
                .shadow(color: Palette.black.color.opacity(0.8), radius: 1)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 35)
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

enum NavigationBarType {
    case back
    case close
    case none
}
