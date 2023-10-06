//
//  ContentView.swift
//  ExampleMVVC
//
//  Created by mr on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = TaskViewModel()
    @State private var newTaskTitle: String = ""
    
    
    var body: some View {
       
        VStack {
                    // Campo di inserimento per una nuova attività
                    TextField("Nuova Attività", text: $newTaskTitle)
                        .padding()
                    
                    // Bottone per aggiungere un'attività
                    Button(action: {
                        viewModel.addTask(title: newTaskTitle)
                        newTaskTitle = ""
                    }) {
                        Text("Aggiungi Attività")
                    }
                    
                    // Lista delle attività
                    List(viewModel.tasks) { task in
                        // Vista di un'attività
                        HStack {
                            Text(task.title)
                            Spacer()
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    viewModel.toggleTaskCompletion(task: task)
                                }
                        }
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
