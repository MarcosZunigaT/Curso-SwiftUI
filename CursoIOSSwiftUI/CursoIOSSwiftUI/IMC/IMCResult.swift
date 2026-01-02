//
//  IMCResult.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 2/10/25.
//

import SwiftUI

struct IMCResult: View {
    let userWeight:Double
    let userHeight:Double
    
    var body: some View {
        VStack{
            Text("Tu resultado").font(.title).bold().foregroundColor(.white)
            InformationView(result: calculateIMC(weight: userWeight, height: userHeight))
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

struct InformationView: View {
    let result:Double
    var body: some View {
        let information = getIMCResult(result: result)
        VStack{
            Spacer()
            Text(information.0).foregroundColor(information.2).font(.title).bold()
            Spacer()
//            Mostrar valor Double con 2 decimales
            Text("\(result, specifier: "%.2f")").foregroundColor(.white).font(.system(size: 80)).bold()
            Spacer()
            Text(information.1)
                .foregroundColor(.white)
                .font(.title2)
                .bold()
                .padding(.horizontal, 10)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
            .cornerRadius(16)
            .padding(16)
    }
}

func getIMCResult (result:Double) -> (String,String,Color) {
    let title:String
    let description:String
    let color:Color
    
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estas por debajo del peso recomendado segun el IMC."
        color = Color.yellow
    case 20.00...24.99:
        title = "Peso normal"
        description = "Estas en el peso recomendado segun el IMC."
        color = Color.green
    case 25.00...29.99:
        title = "Sobrepeso"
        description = "Estas por encima del peso recomendado sun el IMC."
        color = Color.orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estas muy por encima del peso recomendado segun el IMC."
        color = Color.red
    default:
        title = "Error"
        description = "Ha ocurrido un error"
        color = Color.red
    }
    
    return (title, description, color)

}

func calculateIMC(weight:Double, height:Double) -> Double{
    let result = weight / ((height / 100) * (height / 100))
    return result
}

#Preview {
    IMCResult(userWeight: 70, userHeight: 173)
}
