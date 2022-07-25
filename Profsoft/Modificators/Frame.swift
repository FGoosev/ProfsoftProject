//
//  Frame.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//

import SwiftUI

struct GroupModif: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    let offsetY: CGFloat
    
    func body(content: Content) -> some View{
        content
            .frame(width: width, height: height)
            .offset(x:0, y: offsetY)
    }
}
/*
extension View {
    func GroupModif() -> some View{
        self.modifier(GroupModif(width: width, height: height, offsetY: offsetY))
    }
}

*/
