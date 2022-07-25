//
//  AppleButton.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 23.07.2022.
//
import AuthenticationServices
import SwiftUI

struct AppleButton: View {
    var body: some View{
        SignInWithAppleButton(.continue, onRequest: configure, onCompletion: handle)
            .frame(height: 60)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            .signInWithAppleButtonStyle(.white)
    }
}

private extension AppleButton{
    func configure(_ request: ASAuthorizationAppleIDRequest){
        
    }
    func handle(_ authResult: Result<ASAuthorization, Error>){
        
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton()
    }
}
