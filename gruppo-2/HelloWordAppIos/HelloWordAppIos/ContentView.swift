//
//  ContentView.swift
//  HelloWordAppIos
//
//  Created by mr on 03/10/23.
//

import SwiftUI



struct ContentView: View {
    
    @State var numero1 : String = ""
    @State var numero2 : String = ""
    @State var risultato : Int = 0

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("WELCOME")
            
            TextField("Insert a number", text: $numero1)
            
            TextField("Insert a number", text: $numero2)
            
           
            
            Text("Another Example")
                 .font(.system(size : 70 , weight : .medium))
                 .foregroundColor(.red)
        }
        .padding()
    }
    
    
    func somma(n1 : String, n2 : String) -> Int {
      
        return 10;
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
