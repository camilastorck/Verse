//
//  SignUpView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var nameField: String = ""
    @State private var emailField: String = ""
    @State private var passwordField: String = ""
    @State private var reTypePasswordField: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationBar(type: .back) {
                    presentationMode.wrappedValue.dismiss()
                }
                
                Text("SIGNUP".localized)
                    .font(Font.semibold(size: 20))
                    .foregroundColor(Palette.black.color)
                    .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false) {
                    /// Name Field
                    InputView(
                        icon: Image(systemName: "person.text.rectangle"),
                        sectionTitle: "SIGNUP_NAME".localized,
                        fieldPrompt: "SIGNUP_NAME_PROMPT".localized,
                        fieldWrapper: nameField
                    )
                    
                    /// Email Field
                    InputView(
                        icon: Image(systemName: "envelope.badge"),
                        sectionTitle: "LOGIN_EMAIL".localized,
                        fieldPrompt: "LOGIN_EMAIL_PROMPT".localized,
                        fieldWrapper: passwordField
                    )
                    
                    /// Password Field
                    InputView(
                        icon: Image(systemName: "lock"),
                        sectionTitle: "LOGIN_PASSWORD".localized,
                        fieldPrompt: "LOGIN_PASSWORD_PROMPT".localized,
                        isSecured: true,
                        fieldWrapper: passwordField
                    )
                    
                    /// Re Type Password Field
                    InputView(
                        icon: Image(systemName: "lock"),
                        sectionTitle: "SIGNUP_RETYPE_PASSWORD".localized,
                        fieldPrompt: "SIGNUP_RETYPE_PASSWORD_PROMPT".localized,
                        isSecured: true,
                        fieldWrapper: passwordField
                    )
                    
                    VerseButton(title: "ONBOARDING_SIGNUP_TITLE".localized, type: .primary)
                        .padding(.top)
                    ServicesOnboardingView()
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}
