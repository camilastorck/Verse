//
//  LogInView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct LogInView: View {
    @State private var emailField: String = ""
    @State private var passwordField: String = ""
    @State private var showLoading: Bool = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationBar(type: .back) {
                    presentationMode.wrappedValue.dismiss()
                }
                
                Text("LOGIN".localized)
                    .font(Font.semibold(size: 20))
                    .foregroundColor(Palette.black.color)
                    .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false) {
                    /// Email Field
                    InputView(
                        icon: Image(systemName: "envelope.badge"),
                        sectionTitle: "LOGIN_EMAIL".localized,
                        fieldPrompt: "LOGIN_EMAIL_PROMPT".localized,
                        fieldWrapper: emailField
                    )
                    
                    /// Password Field
                    InputView(
                        icon: Image(systemName: "lock"),
                        sectionTitle: "LOGIN_PASSWORD".localized,
                        fieldPrompt: "LOGIN_PASSWORD_PROMPT".localized,
                        isSecured: true,
                        fieldWrapper: passwordField
                    )
                    
                    Text("LOGIN_PASSWORD_FORGOT".localized)
                        .foregroundColor(Palette.black.color)
                        .font(Font.medium(size: 12))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.init(top: -8, leading: 16, bottom: 16, trailing: 30))
                    
                    VerseButton(title: "ONBOARDING_LOGININ_TITLE".localized, type: .primary)
                        .onTapGesture {
                            showLoading.toggle()
                        }
                    
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Palette.white.color)
        }
        .navigationBarHidden(true)
    }
}
