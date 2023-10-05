//
//  ContentView.swift
//  TerzaApp
//
//  Created by mr on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var name : String = "Roberto"
    @State var testo : String = ""
    @State var password : String = ""
    @State var foxData : Fox = Fox(image: "", link: "");
    
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
    
    
    
    var body: some View {
        
    
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
            }
            
            
            
            
            
            
            
            SecureField("insert a password", text:$password )
            
            
            /*
            HStack {
                Image(systemName: "pencil")
                Spacer()
                Image(systemName: "lasso")
                Spacer()

                Image(systemName: "pencil.tip")

            }
             */
            Text( name  )
            
            Button(action: {
                print("ok elaboro")
                fetchData();
            }) {
                       Text("click here ")
                           .font(.headline)
                           .foregroundColor(.white)
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(LinearGradient(gradient: Gradient(colors: [.blue , .green]), startPoint: .leading, endPoint: .trailing))
                           .cornerRadius(10)
                   }
            
            TextField("inserisic il tuo testo", text: $testo)
            
            Divider()

            Text(testo)
            
            Divider()
            Text("----> " + foxData.image + "<-----")
            Text("testo 3 ")

           
            
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
