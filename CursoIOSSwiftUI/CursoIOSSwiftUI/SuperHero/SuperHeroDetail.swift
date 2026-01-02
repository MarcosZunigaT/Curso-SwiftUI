//
//  SuperHeroDetail.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 6/10/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct SuperHeroDetail: View {
    let heroId:String
    
    @State var superheroDetail: ApiNetwork.SuperHeroCompleted? = nil
    @State var isLoading: Bool = true
    var body: some View {
        VStack{
            if(isLoading){
                ProgressView().tint(.white)
            } else if let superHero = superheroDetail{
                WebImage(url: URL(string: superHero.superHeroBase.image.url))
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                Text(superHero.superHeroBase.name)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.red)
                Spacer()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
            .onAppear{
                Task{
                    do{
                        print("Iniciando consumo de servicio")
                        superheroDetail = try await ApiNetwork().getHeroById(id: heroId)
                    } catch {
                        print(superheroDetail ?? "No viene dato")
                        superheroDetail = nil
                    }
                    isLoading = false
                }
            }
    }
}

#Preview {
    SuperHeroDetail(heroId: "62")
}
