//
//  SettingCellView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import SwiftUI

struct SettingCellView: View {
    @State var isButtonOn: Bool = false
    let model: Settings
    let action: () -> Void
    
    var body: some View {
        if model.isButton{
            CellButton(model: model, action: {})
        }else{
            HStack{
                model.icon
                    .resizable()
                    .frame(width: 20, height: 20)
                Toggle(isOn: $isButtonOn){
                    Text(model.title)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }
            }
        }
    }
}

struct SettingCellView_Previews: PreviewProvider {
    static var previews: some View {
        SettingCellView(model: .mock3(), action: {})
    }
}
