//
//  ContentView.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 19.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isOpen: Bool = true
    
    var body: some View {
        /*
        ZStack{
            Rectangle()
                .fill(.black)
                .GroupModif(width: 50, height: 50, offsetY: 20)
            Rectangle()
                .fill(.red)
                .GroupModif(width: 50, height: 50, offsetY: 50)
            Rectangle()
                .fill(.green)
                .GroupModif(width: 50, height: 50, offsetY: 70)
            Rectangle()
                .fill(.brown)
                .GroupModif(width: 50, height: 50, offsetY: 90)
        }
         */
        VStack{
            Container{
                content
            }
        }
    }
    
        
}

private extension ContentView{
    var content: some View{
        VStack{
            contentText
            button
        }
    }
    var button: some View{
        Button(action:
            showText
        ) {
            Text("Click")
        }
    }
    
    @ViewBuilder var contentText: some View{
        if isOpen{
            Text("Content")
                .foregroundColor(.green)
        }
    }
}

private extension ContentView{
    func showText(){
        isOpen.toggle()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
