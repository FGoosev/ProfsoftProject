//
//  SettingsListView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import SwiftUI

struct SettingsListView: View {
    
    @StateObject private var viewModel = SettingsListViewModel()
    
    var body: some View {
        VStack{
            List{
                title
                personalArea
                settingNet
                settingPhone
            }
        }
    }
}

private extension SettingsListView{
    var title: some View{
        VStack{
            Text("Настройки")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 35, weight: .bold))
            SearchTextField(search: .constant(""))
        }
        .padding(-16)
        .listRowBackground(Color.clear)
    }
    
    var personalArea: some View{
        Section(){
            PersonalAreaCellView(model: .mock7())
        }
    }
    
    var settingNet: some View{
        Section(){
            ForEach(viewModel.output.settings){ model in
                if model.group == .network{
                    SettingCellView(model: model, action: {
                        settingButtonTap(id: model.id)
                    })
                }
            }
        }
    }
    
    var settingPhone: some View{
        Section(){
            ForEach(viewModel.output.settings){ model in
                if model.group == .settingPhone{
                    SettingCellView(model: model, action: {
                        settingButtonTap(id: model.id)
                    })
                }
            }
        }
    }
}

private extension SettingsListView{
    func settingButtonTap(id: Int) {
        viewModel.input.settingButtonTap.send(id)
    }
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
