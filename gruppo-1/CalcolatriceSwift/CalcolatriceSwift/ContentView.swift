//
//  ContentView.swift
//  CalcolatriceSwift
//
//  Created by mr on 27/09/23.
//

import SwiftUI



func somma(numero1 : String , numero2 : String) -> Int {
    
    var somma : Int = Int(numero1)! + Int(numero2)!;
    
    return somma;
}

struct ContentView: View {
    
    
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var sum = 0
    @State private var isVisible = false;
    
    
    var body: some View {
        VStack {
            
            Text("CALCOLATRI CHE CALCOLA LA SOMMA")

            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            // creo un collegamento tra la riga 13 e la riga 23
            TextField("Numero 1", text: $number1)
                .keyboardType(.phonePad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            TextField("Numero 2", text: $number2)
                .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            
            
            Button(action: {
                self.sum = somma(numero1: self.number1, numero2: self.number2);
                self.isVisible = true;
            }) {
                Text("Calcola somma")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            
            
            if(isVisible){
                Text("Somma:" + String(self.sum))
                    .font(.title)
                    .padding()
            }
            
           
                
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
