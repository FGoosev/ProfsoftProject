//
//  AppButton.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//
import AuthenticationServices
import SwiftUI

struct AppButton: View {
    @Environment(\.isEnabled) private var isEnabled
    
    let style: AppButtonStyle
    let title: String
    var body: some View {
        HStack{
            Spacer()
            Text(title)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(style.textColor)
            Spacer()
        }
        .padding(.vertical, 17)
        .background(style.background)
        .cornerRadius(10)
        .overlay(content: disabledView)
    }
}


private extension AppButton{
    @ViewBuilder func disabledView() -> some View{
        if !isEnabled {
            Color.white
                .opacity(0.76)
        }
    }
}

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(style: .button1, title: "Получить код")
    }
}
