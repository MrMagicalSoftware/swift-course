//
//  CatUIView.swift
//  RandomFox
//
//  Created by mr on 27/09/23.
//

import SwiftUI

struct CatUIView: View {
    
    
    @State private var myList : [WelcomeElement] = [];
    
    
    
    var body: some View {
        Text("Hello, World!")
    
        List(myList) { welcome in
            Text(welcome.text) 
        }
        
        Button {
            fetchData()
        } label: {
            Text("click here to fetch")
        }

        
    }
    
    
    func fetchData() {
            if let url = URL(string: "https://cat-fact.herokuapp.com/facts/random?animal_cat&amount=10") {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error == nil else {
                        return
                    }

                    if let decodedFox = try? JSONDecoder().decode(Welcome.self, from: data) {
                        DispatchQueue.main.async {
                            myList = decodedFox
                        }
                    }
                }.resume()
            }
    }
    
    
}

