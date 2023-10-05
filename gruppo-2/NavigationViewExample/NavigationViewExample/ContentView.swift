//
//  ContentView.swift
//  NavigationViewExample
//
//  Created by mr on 05/10/23.
//

import SwiftUI

import CoreData


struct ChildView: View {
    
    @Binding var data: String // arrivano dei dati dal padre....
    //@Binding var paperino : Any
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text(data.uppercased())
    }
    
}



struct ContattiView : View {
   
    
    
    
    
    var body: some View {
        VStack {
            Text("PAGINA DEI CONTATTI")
            
        }
    }
    
    
    
}



struct ContentView: View {
    
    
    
    
    
    
    
    @State var passingMyData : String = "ooooooo"
    
    var body: some View {
        VStack {
            
            Text(passingMyData)
            
            NavigationView {
                  List {
                    
                      NavigationLink(destination: ContattiView()) {
                          Text("Go to Destination")
                          
                      }

                      NavigationLink(destination: ChildView(data: $passingMyData)) {
                          Text("Go to ChildView")
                          
                      }
                      
                  }
                  .navigationBarTitle("Home")
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
