//
//  TextfieldExample.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI

struct TextfieldExample: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo valor es \(newValue)")
                }
            
            SecureField("Escribe tu password", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: password) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo valor es \(newValue)")
                }
        }
    }
}

#Preview {
    TextfieldExample()
}
