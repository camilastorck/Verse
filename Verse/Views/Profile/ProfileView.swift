//
//  ProfileView.swift
//  Verse
//
//  Created by Camila Storck on 15/09/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var barButtonSelected: Bool = true
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationBar(
                        title: "PROFILE_VIEW_TITLE".localized,
                        type: .back) {
                            presentationMode.wrappedValue.dismiss()
                        }
                }
                Spacer()
            }
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}
