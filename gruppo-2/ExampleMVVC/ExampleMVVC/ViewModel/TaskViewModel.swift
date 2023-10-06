//
//  TaskViewModel.swift
//  ExampleMVVC
//
//  Created by mr on 06/10/23.
//

import Foundation


// ViewModel per gestire l'elenco delle attività
class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    // Aggiungi una nuova attività
    func addTask(title: String) {
        let newTask = Task(title: title)
        tasks.append(newTask)
    }
    
    // Segna un'attività come completata
    func toggleTaskCompletion(task: Task) {
        // Cerchiamo l'indice dell'attività all'interno dell'array "tasks" in base all'ID
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle() // // Utilizziamo l'indice per modificare il valore di "isCompleted" della specifica attività trovata
        }
    }
}
