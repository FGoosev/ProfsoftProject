//
//  Container.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View{
        HStack{
            Spacer()
            Text("Test project")
            Spacer()
                
        }
        .frame(height: 100, alignment: .center)
        .background(.red)
    }
}
struct Container<Content: View>: View {
    let content: () -> Content
    
    var body: some View{
        VStack{
            HeaderView()
            content()
            Spacer()
        }
        
    }
}

