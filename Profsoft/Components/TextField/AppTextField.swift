//
//  AppTextField.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 26.07.2022.
//

import SwiftUI

struct AppTextField: View {
    @Binding var login: String
    
    var body: some View {
        TextField("Телефон или почта", text: $login)
            .frame(height: 60)
            .padding(.leading, 15)
            .background(Color.gray.opacity(0.2))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            .padding(.bottom, 10)
    }
}

struct AppTextField_Previews: PreviewProvider {
    static var previews: some View {
        AppTextField(login: .constant("true"))
    }
}
