//
//  SettingsView.swift
//  Verse
//
//  Created by Camila Storck on 16/09/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var barButtonSelected: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("TAB_BAR_SETTINGS_TITLE".localized)
                        .font(Font.bold(size: 20))
                        .foregroundColor(Palette.black.color)
                    Spacer()
                    NavigationButton(image: "gearshape", selected: $barButtonSelected)
                }
                .padding(.init(top: 8, leading: 20, bottom: 8, trailing: 3))
                
                Spacer()
            }
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
