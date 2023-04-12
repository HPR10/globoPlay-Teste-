//
//  SplashScreen.swift
//  GloboPlay Teste
//
//  Created by HP on 11/04/23.
//

import SwiftUI

struct SplashScreen: View {
    
    var splashScreen: String
    @State var isActive : Bool = false

    var body: some View {
        if isActive {
            HomeView()
        } else {
            VStack {
                VStack {
                    Image(splashScreen)
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(splashScreen: "splashScreen")
    }
}




