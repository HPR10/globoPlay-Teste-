//
//  ContentView.swift
//  GloboPlay Teste
//
//  Created by HP on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
