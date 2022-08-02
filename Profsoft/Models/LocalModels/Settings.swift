//
//  Settings.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import Foundation
import SwiftUI

struct Settings: Identifiable {
    
    let id: Int
    let icon: Image
    let title: String
    let subtitle: String?
    let chevron: Image?
    let isButton: Bool
    let group: Group
}


extension Settings{
    static func mock() -> Self {
        Settings(id: 1, icon: Image(systemName: "airplane.circle.fill"), title: "Авиарежим", subtitle: "Test1", chevron: Image(systemName: "chevron.right"), isButton: false, group: .network)
    }
    
    static func mock2() -> Self {
        Settings(id: 2, icon: Image(systemName: "wifi.circle.fill"), title: "Wi-Fi", subtitle: "Не подключено", chevron: Image(systemName: "chevron.right"), isButton: true, group: .network)
    }
    
    static func mock3() -> Self {
        Settings(id: 3, icon: Image("bluetooth"), title: "Bluetooth", subtitle: "Вкл.", chevron: Image(systemName: "chevron.right"), isButton: true, group: .network)
    }
    
    static func mock4() -> Self {
        Settings(id: 4, icon: Image(systemName: "antenna.radiowaves.left.and.right.circle"), title: "Сотовая связь", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .network)
    }
    
    static func mock5() -> Self {
        Settings(id: 5, icon: Image(systemName: "personalhotspot.circle.fill"), title: "Режим модема", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .network)
    }
    
    static func mock6() -> Self {
        Settings(id: 6, icon: Image(systemName: "v.circle.fill"), title: "VPN", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: false, group: .network)
    }
    
    static func mock8() -> Self {
        Settings(id: 8, icon: Image(systemName: "bell.badge.circle.fill"), title: "Уведомления", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .settingPhone)
    }
    
    static func mock9() -> Self {
        Settings(id: 9, icon: Image(systemName: "speaker.wave.2.circle.fill"), title: "Звуки, тактильные сигналы", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .settingPhone)
    }
    
    static func mock10() -> Self {
        Settings(id: 10, icon: Image(systemName: "moon.circle.fill"), title: "Фокусирование", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .settingPhone)
    }
    
    static func mock11() -> Self {
        Settings(id: 11, icon: Image(systemName: "hourglass.circle.fill"), title: "Экранное время", subtitle: "", chevron: Image(systemName: "chevron.right"), isButton: true, group: .settingPhone)
    }
    static func mock7() -> Self {
        Settings(id: 7, icon: Image(systemName: "heart.fill"), title: "Александр Гусев", subtitle: "Apple ID, iCloud+, контент и покупки", chevron: Image(systemName: "chevron.right"), isButton: true, group: .personalArea)
    }
}

enum Group: Int{
    case network = 1
    case settingPhone = 2
    case personalArea = 3
}
