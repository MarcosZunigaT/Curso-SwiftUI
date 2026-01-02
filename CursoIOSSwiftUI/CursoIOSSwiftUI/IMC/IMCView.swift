//
//  IMCView.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct IMCView: View {
    
//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    @State var gender:Int = 0
    @State var selectedHeight:Double = 150
    @State var ageCounter:Int = 31
    @State var weightCounter:Int = 80
    
    var body: some View {
        VStack {
            HStack{
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
                
            }
            HeightCalculator(
                selectedHeight: $selectedHeight
            )
            HStack{
                CounterButton(count: $ageCounter, text: "Edad")
                CounterButton(count: $weightCounter, text: "Peso")
            }
            IMCCalculateButton(
                userWeight: Double(weightCounter),
                userHeight: selectedHeight
            )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
        //            .navigationBarBackButtonHidden()
        //            .navigationTitle("IMC Calculator")
            .toolbar(content: {
                ToolbarItem(
                    placement: .principal, content: {
                        Text("IMC Calculator").foregroundColor(.white)
                    }
                )
            })
    }
}

struct ToggleButton: View {
    
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
    var body: some View{
        
        let backgroundColorByState = if(gender == selectedGender){
            Color.backgroundComponentSelected
        }else{
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }, label: {
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(backgroundColorByState)
        })
    }
}

struct InformationText: View {
    let text:String
    var body: some View{
        Text(text)
            .bold()
            .font(.largeTitle)
            .foregroundColor(.white)
    }
}

struct HeightCalculator: View {
    
    @Binding var selectedHeight:Double
    var body: some View{
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(
                value: $selectedHeight,
                in: 100...220,
                step: 1,
            ).accentColor(.purple).padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}

struct CounterButton:View {
    
    @Binding var count:Int
    let text:String
    
    var body: some View{
        VStack{
            TitleText(text: text)
            InformationText(text: String(count))
            HStack{
                Button(
                    action: {
                        if count > 0 {
                            count -= 1
                        }
                    }, label: {
                        ZStack{
                            Circle()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.purple)
                            Image(systemName: "minus")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25)
                        }
                    }
                )
                Button(
                    action: {
                        if count < 100 {
                            count += 1
                        }
                    }, label: {
                        ZStack{
                            Circle()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.purple)
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25)
                        }
                    }
                )
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}

struct TitleText: View {
    
    let text:String
    
    var body: some View{
        Text(text)
            .bold()
            .font(.title2)
            .foregroundColor(.gray)
    }
}

struct IMCCalculateButton:View {
    let userWeight:Double
    let userHeight:Double
    
    var body: some View{
        NavigationStack{
            NavigationLink(
                destination: {
                    IMCResult(
                        userWeight: userWeight,
                        userHeight: userHeight
                    )
                },
                label: {
                    Text("Calcular").font(.title).bold().foregroundColor(.purple)
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .background(.backgroundComponent)
                }
            )
        }
    }
}

#Preview {
    IMCView()
}
