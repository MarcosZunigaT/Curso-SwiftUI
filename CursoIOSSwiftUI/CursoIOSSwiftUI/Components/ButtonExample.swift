//
//  ButtonExample.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Presiona") {
            print("uwu")
        }
        Button(
            action: {
                print("uwu")
            }, label: {
                Text("Presiona")
                    .frame(width: 100, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
        )
    }
}

struct CounterView : View {
    @State var suscriptorsNumber = 0
    var body: some View{
        Button(
            action: {
                suscriptorsNumber += 1
            }, label: {
                Text("Suscriptores : \(suscriptorsNumber)")
                    .bold()
                    .font(.title)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    .padding(.horizontal,10)
            }
        )
    }
}

#Preview {
    CounterView()
}
