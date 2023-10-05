//
//  ContentView.swift
//  SecondApp
//
//  Created by mr on 03/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var toDoList :[String]  = ["e1" , "e2"]
    @State var elemento : String = "";
    @State var showingAlert : Bool = false;

    var body: some View {
        VStack {
            
            HStack{
                Image(systemName: "sun.min")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Image(systemName: "sun.max")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Image(systemName: "sunrise")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
           
            List {
                ForEach(toDoList, id: \.self) { item in
                    Text(item)
                }
            }
            
            
            //Divider().background(Color.red)
            
            Rectangle()
                       .frame(height: 8)
                       .foregroundColor(.red)
            
            Circle().frame(height: 5).foregroundColor(.blue)
            
            TextField("Aggiungi nuovo elemento", text: $elemento)
            
            Button(action: {
                
                
                if(!elemento.isEmpty && !toDoList.contains(elemento)){
                    
                    toDoList.append(elemento)
                }
                else{
                    
                    showingAlert = true;
                    
                }
                
                
            }) {
                        Text("Gradient Button")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(LinearGradient(gradient:
                            Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)
                    }
        }
        .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Alert"), message: Text("This is an alert"), dismissButton: .default(Text("OK")))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
