//
//  User.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 28.07.2022.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let secondName: String
    let sex: UserSex
    let age: Int
    let color: Color
    
    var fullName: String {
        firstName + " " + secondName
    }
}

extension User {
    static func mock() -> Self {
        User(firstName: "John",
             secondName: "Snow",
             sex: .boy,
             age: 13, color: .red)
    }
    static func mock2() -> Self {
        User(firstName: "John",
             secondName: "Tim",
             sex: .boy,
             age: 14, color: .green)
    }
    static func mock3() -> Self {
        User(firstName: "John",
             secondName: "Brown",
             sex: .boy,
             age: 15, color: .yellow)
    }
    static func mock4() -> Self {
        User(firstName: "Liza",
             secondName: "Gehre",
             sex: .girl,
             age: 16, color: .brown)
    }
    static func mock5() -> Self {
        User(firstName: "John",
             secondName: "Snow",
             sex: .boy,
             age: 17, color: .purple)
    }
}

enum UserSex: Int {
    case boy = 1
    case girl = 2
}
