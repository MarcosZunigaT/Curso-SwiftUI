//
//  ContentView.swift
//  CursoIOS
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.red)
                .frame(height: 40)
            Rectangle()
                .foregroundColor(.red)
                .frame(height: 40)
                .padding(.bottom, 60)
            Rectangle()
                .foregroundColor(.red)
                .frame(height: 100)
        }
        .padding()
    }
}

struct GeometryContentView : View {
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
    GeometryContentView()
}

