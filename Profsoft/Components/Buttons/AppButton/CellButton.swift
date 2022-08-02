//
//  CellButton.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import SwiftUI

struct CellButton: View {
    
    let model: Settings
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            HStack{
                model.icon
                    .resizable()
                    .frame(width: 20,height: 20)
                    
                Text(model.title)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                Spacer()
                Text(model.subtitle ?? "")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                model.chevron
                    .foregroundColor(.gray)
            }
        }
    }
}

struct CellButton_Previews: PreviewProvider {
    static var previews: some View {
        CellButton(model: .mock3(), action: {})
    }
}
