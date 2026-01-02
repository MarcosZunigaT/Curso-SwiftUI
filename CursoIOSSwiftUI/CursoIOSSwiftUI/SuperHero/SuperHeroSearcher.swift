//
//  SuperHeroSearcher.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 2/10/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct SuperHeroSearcher: View {
    
    @State var superHeroName:String = ""
    @State var wrapper:ApiNetwork.Wrapper? = nil
    @State var isLoading:Bool = false
    var body: some View {
        VStack{
            TextField("",
                text: $superHeroName,
                      prompt: Text("Busca tu heroe")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.gray)
            ).foregroundColor(.white)
                .font(.title2)
                .bold()
                .padding(16)
                .border(.purple, width: 1.5)
                .padding(8)
                .autocorrectionDisabled()
                .onSubmit {
                    isLoading = true
                    Task{
                        do{
                            wrapper = try await ApiNetwork().getHeroByQuery(query: superHeroName)
                        }catch{
                            print("Error")
                        }
                        isLoading = false
                    }
                }
            if(isLoading) {
                ProgressView()
            }
            NavigationStack{
                List(wrapper?.results ?? []) { superhero in
                    ZStack{
                        SuperHeroItem(superHero: superhero)
                        NavigationLink(destination: {
                            SuperHeroDetail(heroId: superhero.id)
                        }, label: {
                            EmptyView()
                        }).opacity(0)
                    }.listRowBackground(Color.backgroundApp)
                }.listStyle(.plain)
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

struct SuperHeroItem:View{
    let superHero:ApiNetwork.SuperHero
    var body: some View{
        ZStack{
            Rectangle()
            
            WebImage(
                url: URL(string: superHero.image.url)
            ).resizable()
                .indicator(.activity)
                .scaledToFill()
                .frame(height: 200)
            
            VStack{
                Spacer()
                Text(superHero.name)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.5))
            }
        }.frame(height: 200).cornerRadius(32)
    }
}

#Preview {
    SuperHeroSearcher()
//    SuperHeroItem(superHero: ApiNetwork.superHero(id: "1", name: "Prueba heroe"))
}
