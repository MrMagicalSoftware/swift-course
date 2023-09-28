//
//  ContentView.swift
//  RandomFox
//
//  Created by mr on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foxData: Fox? = nil
    @State private var dataFromParent = " ##### @@"

    var body: some View {
        
        
        NavigationView{
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                
                
                
                
                Button(action: {
                    // Effettua la chiamata JSON quando si preme il pulsante
                    fetchData()
                }) {
                    Text("Carica un Fox###")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: InfoView()) {
                    //Text("Go to Detail")
                    Image(systemName: "globe").frame(width: 200 , height: 200)
                }
                
                
                
                NavigationLink(destination: ChildView(data: $dataFromParent)) {
                    Text("click here")
                }
                
                NavigationLink(destination:
                        CatUIView()
                
                ) {
                    Text("click here to cat view")
                }
                
                
                
                
            }
            
            
            VStack {
                if let foxData = foxData {
                    // Visualizza l'immagine e il link del fox
                    AsyncImage(url: URL(string: foxData.image)) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 400)
                                .cornerRadius(10)
                        default:
                            Text("Caricamento immagine...")
                        }
                    }
                    .padding()
                    
                    
                    
                    Link("Apri il link", destination: URL(string: foxData.link)!)
                        .font(.headline)
                        .padding()
                } else {
                    // Mostra un messaggio iniziale
                    Text("Premi il pulsante per caricare un Fox.")
                }
            }
            
            
            
            
            .padding()
            
        }
    }
    
    
    func fetchData() {
            if let url = URL(string: "https://randomfox.ca/floof/") {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error == nil else {
                        return
                    }

                    if let decodedFox = try? JSONDecoder().decode(Fox.self, from: data) {
                        DispatchQueue.main.async {
                            foxData = decodedFox
                        }
                    }
                }.resume()
            }
    }
    
}

struct Fox: Codable {
    var image: String
    var link: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
