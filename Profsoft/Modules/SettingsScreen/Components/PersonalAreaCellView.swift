//
//  PersonalAreaCellView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import SwiftUI

struct PersonalAreaCellView: View {
    let model: Settings
    
    var body: some View {
        Button(action: {}){
            HStack{
                Circle()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 20)
                    .padding(.leading, -10)
                    .foregroundColor(.gray)
                Spacer()
                VStack{
                    Text(model.title)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(model.subtitle ?? "")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                model.chevron
                    .foregroundColor(.gray)
            }
        }
        .padding(16)
    }
}

struct PersonalAreaCellView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalAreaCellView(model: .mock7())
    }
}
