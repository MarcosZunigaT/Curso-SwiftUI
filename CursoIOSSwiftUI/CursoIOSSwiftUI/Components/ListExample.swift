//
//  ListExample.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 2/10/25.
//

import SwiftUI

var pokemons = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charmander"),
    Pokemon(name: "Charmilion"),
    Pokemon(name: "Charizard"),
    Pokemon(name: "MarcosDev")
]

var digimons = [
    Digimon(name: "Agumon"),
    Digimon(name: "Graymon"),
    Digimon(name: "Marcosmon"),
    Digimon(name: "Supermon"),
    Digimon(name: "Supermon"),
    Digimon(name: "Debramon")
]

struct ListExample: View {
    var body: some View {
//        List{
//            Text("Prueba")
//            Text("Prueba")
//            Text("Prueba")
//        }
//        List{
//            ForEach(pokemons, id: \.name) { pokemon in
//                /*@START_MENU_TOKEN@*/Text(pokemon.name)/*@END_MENU_TOKEN@*/
//            }
//        }
        
//        List(digimons) { digimon in
//            Text(digimon.name)
//        }
        
//        List{
//            ForEach(digimons){
//                digimon in Text(digimon.name)
//            }
//        }
        
        List{
            Section(header: Text("Pokemon"), content: {
                ForEach(pokemons, id: \.name) {
                    pokemon in Text(pokemon.name)
                }
            })
            Section(content: {
                ForEach(digimons){
                    digimon in Text(digimon.name)
                }
            }, header: {
                Text("Digimons")
            })
        }
    }
}

struct Pokemon {
    let name: String
}

struct Digimon: Identifiable {
    var id = UUID()
    let name: String
}

#Preview {
    ListExample()
}
