//
//  ContentView.swift
//  CursoIOS
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct Excercise1View : View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack{
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                    .foregroundColor(.black)
                Circle()
                    .foregroundColor(.indigo)
            }.frame(height: 250)
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
            
        }
            .background(.red)
    }
}

#Preview {
    Excercise1View()
}

