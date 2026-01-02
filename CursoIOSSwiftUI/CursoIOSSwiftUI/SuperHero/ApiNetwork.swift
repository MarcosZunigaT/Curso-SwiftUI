//
//  ApiNetwork.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 2/10/25.
//

import Foundation

class ApiNetwork{
    
    struct Wrapper:Codable{
        let response:String
        let results:[SuperHero]
    }
    
    struct SuperHero:Codable, Identifiable{
        let id:String
        let name:String
        let image:ImageSuperHero
    }
    
    struct SuperHeroCompleted:Codable{
        let superHeroBase:SuperHero
        let powerstats:PowerStats
        let biography:Biography
    }
    
    struct PowerStats:Codable {
        let intelligence: String
        let strength: String
        let speed: String
        let durability: String
        let power: String
        let combat: String
    }
    
    struct Biography:Codable {
        let alignment:String
        let publisher:String
        let aliases:[String]
        let fullName:String
        
        enum CodingKeys:String, CodingKey{
            case fullName = "full-name"
            case alignment = "alignment"
            case publisher = "publisher"
            case aliases = "aliases"
        }
    }
    
    struct ImageSuperHero:Codable{
        let url:String
    }
    
    func getHeroById(id:String) async throws -> SuperHeroCompleted{
        let url = URL(string: "https://superheroapi.com/api/afadd947b97adecc1bf734d8895457f2/\(id)")!
        
        print("Vamos a usar: \(url)")
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        print("Esta es la data: \(data)")
        
        let superHero = try JSONDecoder().decode(SuperHeroCompleted.self, from: data)
        
        print("Resultado decodificado: \(try JSONDecoder().decode(SuperHeroCompleted.self, from: data))")
        
        return superHero
    }
    
    func getHeroByQuery(query:String) async throws -> Wrapper{
        let url = URL(string: "https://superheroapi.com/api/afadd947b97adecc1bf734d8895457f2/search/\(query)")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        
        return wrapper
    }
}
