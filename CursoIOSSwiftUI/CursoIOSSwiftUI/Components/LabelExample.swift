//
//  LabelExample.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Suscribirse", image: "swiftui")
        Label("Suscribirse", systemImage: "figure.american.football")
        Label(title: {
            Text("Suscribirse")
        }, icon: {
            Image("swiftui")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        })
    }
}

#Preview {
    LabelExample()
}
