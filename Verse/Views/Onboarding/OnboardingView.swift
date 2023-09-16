//
//  OnboardingView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct OnboardingView: View {
    @State private var showSkipOnboardingAlert: Bool = false
    @State private var navigateToMainView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                Text("ONBOARDING_FIRST_TITLE".localized)
                    .font(Font.semibold(size: 26))
                    .foregroundColor(Palette.black.color)
                
                Text("ONBOARDING_SECOND_TITLE".localized)
                    .font(Font.semibold(size: 30))
                    .foregroundColor(Palette.black.color)
                
                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.top, 30)
                
                Spacer()
                
                NavigationLink {
                    LogInView()
                } label: {
                    VerseButton(
                        title: "ONBOARDING_LOGININ_TITLE".localized,
                        type: .secondary
                    )
                }

                NavigationLink {
                    SignUpView()
                } label: {
                    VerseButton(
                        title: "ONBOARDING_SIGNUP_TITLE".localized,
                        type: .primary
                    )
                }
                
                NavigationLink(isActive: $navigateToMainView) {
                    MainView()
                } label: {
                    Text("ONBOARDING_SKIP_TITLE".localized)
                        .font(Font.medium(size: 13))
                        .foregroundColor(Palette.black.color)
                        .padding(.vertical, 6)
                        .onTapGesture {
                            showSkipOnboardingAlert = true
                        }
                }
            }
            .padding(.bottom, 8)
            .background(Palette.white.color)
            .alert(isPresented: $showSkipOnboardingAlert) {
                Alert(
                    title: Text("ONBOARDING_ALERT_TITLE".localized),
                    message: Text("ONBOARDING_ALERT_MESSAGE".localized),
                    primaryButton: .destructive( Text("ONBOARDING_ALERT_CANCEL_BUTTON_TITLE".localized) ),
                    secondaryButton: .default( Text("ONBOARDING_ALERT_OK_BUTTON_TITLE".localized) ) {
                        showSkipOnboardingAlert = false
                        navigateToMainView = true
                    }
                )
            }
        }
        .navigationBarHidden(true)
    }
}
