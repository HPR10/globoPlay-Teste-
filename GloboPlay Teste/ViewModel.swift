//
//  ViewModel.swift
//  Desafio GloboPlay
//
//  Created by Hugo Pinheiro on 4/11/23.
//

import Foundation

class ViewModel: ObservableObject {
    func fetchData() {
        let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=8c40810056b3ff23ed01c41c69aa8e8a")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print(json)
                } catch (let error) {
                    print(error)
                    return
                }
            } else {
                print("error")
                return
            }
        }.resume()
    }
}

