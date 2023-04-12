//
//  Teste.swift
//  GloboPlay Teste
//
//  Created by HP on 12/04/23.
//

import SwiftUI

struct CustomAppBar: View {
    var title: String
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .edgesIgnoringSafeArea(.top) // Ignorar a área segura no topo
                .frame(height: 50) // Altura da AppBar
            
            HStack {
                Spacer()
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white) // Cor do título
                    .padding(.horizontal) // Adiciona margem horizontal
                    .frame(maxWidth: .infinity, alignment: .center) // 
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            CustomAppBar(title: "Título da AppBar")
            Text("Conteúdo da tela")
                .padding()
            Spacer()
        }
        .background(Color.white) // Cor de fundo do conteúdo da tela
    }
}


