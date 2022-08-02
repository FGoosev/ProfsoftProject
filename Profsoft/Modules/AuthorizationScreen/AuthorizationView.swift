//
//  AuthorizationView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//
import AuthenticationServices
import SwiftUI

struct AuthorizationView: View {
    
    @State private var login: String = ""
    // State vs Observed
    @StateObject private var viewModel = AuthorizationViewModel()
    
    
    var body: some View {
        VStack{
            
            topImage
                .padding(.top, 50)
            titleView
            
            textField
            
            enterButton
            subtitle
            appleButton
            Spacer()
            regButton
        }
        .padding(.horizontal)
    }
}

private extension AuthorizationView{
    var topImage: some View {
        Image("2")
            .resizable()
            .frame(width: 250, height: 150)
    }
    var titleView: some View{
        Text(viewModel.output.title)
            .bold()
            .font(.system(size: 20))
    }
    var textField: some View {
        AppTextField(login: $login)
    }
    var enterButton: some View {
        AppButton(style: .button2,
                  title: "Войти",
                  action: enterButtonTap)
            .disabled(false)
    }
    var subtitle: some View{
        Text("Или с помощью")
            .foregroundColor(.gray)
    }
    var appleButton: some View {
        AppleButton()
    }
    var regButton: some View {
        AppButton(style: .button1,
                  title: "Зарегистрироваться",
                  action: {})
    }
}

private extension AuthorizationView{
    func enterButtonTap() {
        viewModel.input.enterButtonTap.send()
    }
}



struct AuthorizationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationView()
    }
}
//Reactive codding !!!!! Combine, RxSwift
