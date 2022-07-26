//
//  UserCellView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 28.07.2022.
//
import SwiftUI

struct UserCellView: View {
    
    let model: User
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                   Circle()
                        .frame(width: 90, height: 90)
                        .foregroundColor(model.color)
                    Text(model.firstName)
                    Text(model.secondName)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width/3)
                VStack{
                    Text(String(model.age))
                        .font(.system(size: 34, weight: .bold))
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .border(Color.red, width: 2)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView(model: .mock5())
    }
}
