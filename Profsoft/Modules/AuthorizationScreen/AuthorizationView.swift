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
    let viewModel = AuthorizationViewModel()
    
    
    var body: some View {
        VStack{
            VStack{
                Image("2")
                    .resizable()
                    
            }
            .frame(width: 250, height: 150)
            .padding(.top, 50)
            
            Text("Вход в VK ID")
                .bold()
                .font(.system(size: 20))
            
            TextField("Телефон или почта", text: $login)
                .frame(height: 60)
                .padding(.leading, 15)
                .background(Color.gray.opacity(0.2))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
                .padding(.bottom, 10)
            
            AppButton(style: .button2, title: "Войти")
                .disabled(false)
            
            Text("Или с помощью")
                .foregroundColor(.gray)
            
            AppleButton()
                
            Spacer()
            AppButton(style: .button1, title: "Зарегистрироваться")
        }
        .padding(.horizontal)
    }
}



struct AuthorizationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationView()
    }
}
