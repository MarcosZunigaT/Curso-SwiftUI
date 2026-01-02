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
            List{
                NavigationLink(
                    destination: {
                        IMCView()
                    },
                    label: {
                        Text("IMC Calculator")
                    }
                )
                NavigationLink(
                    destination: {
                        SuperHeroSearcher()
                    },
                    label: {
                        Text("Superhero finder")
                    }
                )
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
