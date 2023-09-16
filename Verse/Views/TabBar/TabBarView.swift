//
//  TabBarView.swift
//  Ribbit
//
//  Created by Camila Storck on 22/07/2023.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            /// Home Tab Bar item.
            Button(action: {
                withAnimation(.easeOut(duration: 0.1)) {
                    selectedTab = .home
                }
            }, label: {
                TabBarItem(
                    itemTitle: "TAB_BAR_HOME_TITLE".localized,
                    itemImageTitle: "house.fill"
                )
            })
            
            /// Reviews Tab Bar item.
            Button(action: {
                withAnimation(.easeOut(duration: 0.1)) {
                    selectedTab = .reviews
                }
            }, label: {
                TabBarItem(
                    itemTitle: "TAB_BAR_REVIEWS_TITLE".localized,
                    itemImageTitle: "books.vertical.fill"
                )
            })
            
            /// Add Book Tab Bar item.
            Button(action: {
                withAnimation(.easeOut(duration: 0.1)) {
                    selectedTab = .new
                }
            }, label: {
                TabBarItem(
                    itemTitle: "TAB_BAR_NEW_BOOK_TITLE".localized,
                    itemImageTitle: "plus.circle.fill"
                )
            })
            
            /// Transfer Tab Bar item.
            Button(action: {
                withAnimation(.easeOut(duration: 0.1)) {
                    selectedTab = .transfer
                }
            }, label: {
                TabBarItem(
                    itemTitle: "TAB_BAR_TRANSFER_TITLE".localized,
                    itemImageTitle: "square.and.arrow.up.on.square.fill"
                )
            })
            
            /// Settings Tab Bar item.
            Button(action: {
                withAnimation(.easeOut(duration: 0.1)) {
                    selectedTab = .settings
                }
            }, label: {
                TabBarItem(
                    itemTitle: "TAB_BAR_SETTINGS_TITLE".localized,
                    itemImageTitle: "gearshape.fill"
                )
            })
        }
        .frame(maxWidth: .infinity, maxHeight: 40)
        .padding(12)
        .background(Palette.white.color)
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .shadow(color: Palette.staticGray.color.opacity(0.05), radius: 4, x: 0, y: -5)
    }
}

enum Tab: Int {
    case home = 0
    case reviews
    case new
    case transfer
    case settings
}
