//
//  MainView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct MainView: View {
    
    @State var selected: Tab = .home
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                switch selected {
                case .home:
                    HomeView()
                case .reviews:
                    ReviewsView()
                case .new:
                    NewBookView()
                case .transfer:
                    TransferView()
                case .settings:
                    SettingsView()
                }
                
                TabBarView(selectedTab: $selected)
            }
        }
        .background(Palette.white.color)
    }
}

