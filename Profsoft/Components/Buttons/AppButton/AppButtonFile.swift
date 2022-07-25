//
//  AppButtonFile.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//
import SwiftUI
import Foundation

enum AppButtonStyle{
    case button1
    case button2
    
    
    var background: Color {
        switch self{
            case .button1: return Color.green
            case .button2: return Color.blue
        }
    }
    var textColor: Color {
        switch self{
            case .button1: return Color.white
            case .button2: return Color.white
        }
    }
}
