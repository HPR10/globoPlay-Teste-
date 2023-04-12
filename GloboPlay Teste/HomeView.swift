//
//  ContentView.swift
//  GloboPlay Teste
//
//  Created by HP on 11/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
            VStack {
                
            }
            .padding()
            .onAppear {
                viewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



struct TopBar : View  {
    var body: some View {
        
        VStack(spacing: 20){
            HStack{
                Text("globoplay").font(.system(size: 20)).fontWeight(.semibold).foregroundColor(.white)
                    
               
            }
        }
        
        .padding()
        .background(Color("Color"))
    }
}



