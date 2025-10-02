//
//  TextExample.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text("Custom").font(.system(
                size: 40, weight: .light, design: .rounded
            ))
                .italic()
                .bold()
                .underline()
                .foregroundColor(.blue)
                .background(.red)
            Text("Marcos Marcos Marcos Marcos Marcos Marcos Marcos Marcos Marcos")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(10.7)
        }
    }
}

#Preview {
    TextExample()
}
