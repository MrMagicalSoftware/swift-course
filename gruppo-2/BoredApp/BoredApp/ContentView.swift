//
//  ContentView.swift
//  BoredApp
//
//  Created by mr on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        ZStack{
            
           
           
                Color.red
                    Text("Never be Bored")
                        .font(.largeTitle)
                        .foregroundColor(.white)
            
           
            /*
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]), // You can customize colors here
                startPoint: .topLeading, // Start point of the gradient
                endPoint: .bottomTrailing // End point of the gradient
            )
            */
        }.frame(width: .infinity , height: 100 , alignment: .center)
        
        
        ZStack { // or VStack
            
    
            TabView {
                
                FirstTabView()
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First Tab")
                    }
                
                SecondTabView()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second Tab")
                    }
                
                
                
            }
                       .edgesIgnoringSafeArea(.top) // Extend tabs under the status bar if needed
           
            Spacer()
            
            /*
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]), // You can customize colors here
                startPoint: .topLeading, // Start point of the gradient
                endPoint: .bottomTrailing // End point of the gradient
            )
            .edgesIgnoringSafeArea(.all)
                // Fill the entire screen with the gradient
                
                // Other views on top of the gradient
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            */
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// MARK: - Welcome
struct MyActivity: Codable {
    let activity, type: String
    let participants: Int
    let price: Double
    let link, key: String
    let accessibility: Double
}


//https://www.boredapi.com/api/activity

struct FirstTabView: View {
    
    
    
    
    func fetchData() {
              if let url = URL(string: "https://www.boredapi.com/api/activity") {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                      guard let data = data, error == nil else {
                          return
                      }

                      if let decoded = try? JSONDecoder().decode(MyActivity.self, from: data) {
                          DispatchQueue.main.async {
                             // foxData = decodedFox
                              print(decoded)
                          }
                      }
                  }.resume()
              }
      }
    
    
    
    var body: some View {
        
      
        
        Button(action: {
            print("#############")
            fetchData()
        }, label: {
            Text("Click here")
        })
        
        
        
    }
}

struct SecondTabView: View {
    var body: some View {
        Text("Second Tab Content")
            .font(.largeTitle)
            .foregroundColor(.green)
    }
}
