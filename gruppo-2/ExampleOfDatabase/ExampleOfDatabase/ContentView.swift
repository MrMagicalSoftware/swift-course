//
//  ContentView.swift
//  ExampleOfDatabase
//
//  Created by mr on 05/10/23.
//

import SwiftUI
import CoreData


struct PersonaView : View {
    
    @Environment(\.managedObjectContext) private var viewContext

    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Persona.id, ascending: true)],
        animation: .default)
    private var persone: FetchedResults<Persona>
    
    
    private func addPersona() {
        
        withAnimation {
            //let newItem = Item(context: viewContext)
            //newItem.timestamp = Date()
            

            let newPersona = Persona(context: viewContext)
            newPersona.cognome = "gg"
            newPersona.nome = "gg"
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
        
    }
    
    
    
    var body: some View {
        VStack {
            
            Button(action: {
                addPersona()
            }) {
                Text("add ")
                
            }
            
            List {
                
                ForEach(persone) { persona in
                    Text(persona.nome!)
                }
                .onDelete(perform: {_ in })
                
                
            }
            
            
        }
    }
    
}




struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    

    var body: some View {
        NavigationView {
            
         
            NavigationLink(destination: PersonaView() ) {
                                Text("Row 1")
                            }
            
            
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                    } label: {
                        Text(item.timestamp!, formatter: itemFormatter)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
            
            Divider();
            
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
