//
//  ServicesOnboardingView.swift
//  Verse
//
//  Created by Camila Storck on 14/09/2023.
//

import SwiftUI

struct ServicesOnboardingView: View {
    var body: some View {
        VStack {
            HStack {
                Image("google")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                Image("facebook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
            
            HStack(spacing: 4) {
                Text("ONBOARDING_HAS_ACCOUNT".localized)
                    .font(Font.medium(size: 11))
                    .foregroundColor(Palette.black.color)
                Text("ONBOARDING_LOGININ_TITLE".localized)
                    .font(Font.semibold(size: 11))
                    .foregroundColor(Palette.black.color)
            }
            .padding(.top, 6)
        }
        .padding()
    }
}
