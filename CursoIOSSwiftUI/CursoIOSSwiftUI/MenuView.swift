//
//  MenuView.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(
                    destination: {
                        IMCView()
                    },
                    label: {
                        Text("IMC Calculator")
                    }
                )
                Text("App 2")
                Text("App 3")
                Text("App 4")
                Text("App 4")
                Text("App 5")
            }
        }
    }
}

#Preview {
    MenuView()
}
