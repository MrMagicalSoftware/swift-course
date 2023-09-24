# swift-course

Documentazione :
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/

## Programma

GIORNO 1
 Introduzione
 Guida all’ Apple Developer Program
 Installazione Plugins, Code Snippets e File Templates
 Creare un progetto con playground e configurare l&#39;editor
 Intro alla sintassi di swift
 Le basi della Programmazione ad Oggetti
 Progettare le Classi
 Architetture
 Le basi del linguaggio Swift (Parte 1)
 I Tipi fondamentali
 Le Variabili
 Le costsanti
 Type-Interface
 Type Alias
 I Numeri e le conversioni
 Gli Operatori
 Manipolare le stringhe

GIORNO 2
 Le basi del linguaggio Swift (Parte 2)
 I tipi collezione
 Tuple
 Array
 Set
 Dictionary
 Il Control Flow (if/if Else/For-In etc.)
 Gli Optional-Type
 Le Funzioni in Swift
 Introduzione alle funzioni
 Funzioni e Scope
 Funzioni e Parametri
 I Tipi funzione
 Funzioni Annidate


 Le Closure
 Le funzioni Globali
 Costrutti Swift
 L&#39;enumerazione
 Gli Struct
 Le Classi
 Proprietà Swift
 Stored Property
 Computed Property
 Readonly Property
 Lazy Property
 Property Observers
 Aspetti Avanzati Swift
 Protocol
 Generics
 Extension
 Error Handling

GIORNO 3
 Sviluppo Interfacce
 Progettare e implementare UX avanzate
 L&#39;App Store, pubblicazione/aggiornamemto App e TestFlight
 Sviluppare Interfacce
 Cos&#39;è la UI/UX
 Le interfacce User Firendly
 La User Experience
 Le interfacce NUI
 Historical Timeline
 Xib e Storyboard Vs SwiftUI
 Sviluppare Interfacce con UIKit via Storyboard:
 Come funziona un’App con UIKit
 Sviluppare Interfacce con SwiftUI
 SwiftUI
 Introduzione
 Come funziona un’App con SwiftUI
 L&#39;App Delegate e SceneDelegete in SwiftUI
 Struttura dei progetti
 SwiftUI basics (concetto alla base del sistema)


GIORNO 4
 Core Data
 Core Data: introduzione ai Database
 Core Data: database in locale + sync con CloudKit
 SQLite: database in locale
 Cosa sono i Web-Services
 SOAP Web Services
 Restful Web Services
 Networking e JSON: Introduzione e formato JSON
 Networking e JSON: Introduzione ai BaaS
 Networking e JSON: Tutorial (scaricare ed interp. un JSON)
 Tecniche di Debug
 Tecniche di Debug
 Memory Graph debugging
 Thread Sanitizer
 Main Thread Checker
 View debugging
 Testare l’App con il Testing e UI Testing

GIORNO 5
 LAB: Sviluppare un&#39;applicazione iOS con Swift con integrazione Servizi Rest



# Creare un nuovo workspace


File ->  New -> Workspace...

![Schermata 2023-08-07 alle 11 04 22](https://github.com/MrMagicalSoftware/swift-course/assets/98833112/299e33b7-0ac8-4e64-b55a-62e97b539fb3)


Creiamo un nuovo playground : 

File -> playground.( blank playground) 


## data types in swift


Swift è un linguaggio di programmazione fortemente tipizzato, il che significa che ogni valore che si assegna a una variabile o una costante deve avere un tipo di dato specifico. Ecco alcuni dei tipi di dati principali in Swift:

1. **Integers (Interi)**: Rappresentano numeri interi e possono essere dichiarati con vari tipi, come `Int`, `Int8`, `Int16`, `Int32`, `Int64`, a seconda della dimensione necessaria.

   Esempio:
   ```swift
   let age: Int = 30
   ```

2. **Floating-Point Numbers (Numeri in virgola mobile)**: Rappresentano numeri decimali e possono essere dichiarati con vari tipi, come `Double` o `Float`, a seconda della precisione necessaria.

   Esempio:
   ```swift
   let pi: Double = 3.14159
   ```

3. **Booleans (Booleani)**: Rappresentano valori booleani `true` o `false`.

   Esempio:
   ```swift
   let isSwiftAwesome: Bool = true
   ```

4. **Strings (Stringhe)**: Rappresentano sequenze di caratteri.

   Esempio:
   ```swift
   let greeting: String = "Ciao, mondo!"
   ```

5. **Characters (Caratteri)**: Rappresentano singoli caratteri.

   Esempio:
   ```swift
   let firstInitial: Character = "A"
   ```

6. **Arrays (Array)**: Raccolgono una serie di valori dello stesso tipo in una sequenza ordinata.

   Esempio:
   ```swift
   let numbers: [Int] = [1, 2, 3, 4, 5]
   ```

7. **Dictionaries (Dizionari)**: Associano chiavi a valori.

   Esempio:
   ```swift
   let fruits: [String: Int] = ["Mela": 2, "Banana": 3, "Arancia": 4]
   ```

8. **Tuples (Tuple)**: Raggruppano più valori di diversi tipi in una singola struttura.

   Esempio:
   ```swift
   let person: (name: String, age: Int, isStudent: Bool) = ("Alice", 25, true)
   ```

9. **Optionals (Opzionali)**: Rappresentano un valore che potrebbe essere presente o assente.

   Esempio:
   ```swift
   var middleName: String? // Un opzionale che potrebbe contenere una stringa o essere nil
   ```

10. **Any e AnyObject**: Sono tipi di dati generici che possono rappresentare qualsiasi tipo di dato (`Any`) o qualsiasi classe (`AnyObject`).

   Esempio:
   ```swift
   var something: Any = 42
   ```

 Il linguaggio offre anche la possibilità di definire nuovi tipi di dati personalizzati utilizzando le strutture (`struct`) e le classi (`class`).


### Esempio di struct 


```swift
// Definizione di una struttura chiamata "Person"
struct Person {
    var firstName: String
    var lastName: String
    var age: Int
    
    // Un metodo per stampare le informazioni della persona
    func printInfo() {
        print("Nome: \(firstName)")
        print("Cognome: \(lastName)")
        print("Età: \(age)")
    }
}

// Creazione di un'istanza della struttura "Person"
var person1 = Person(firstName: "Mario", lastName: "Rossi", age: 30)

// Accesso alle proprietà della struttura e chiamata del metodo
print("Nome: \(person1.firstName)")
print("Cognome: \(person1.lastName)")
print("Età: \(person1.age)")

// Chiamata del metodo per stampare le informazioni
person1.printInfo()
```

In questo esempio, abbiamo definito una struttura chiamata "Person" con tre proprietà: `firstName`, `lastName` e `age`. La struttura contiene anche un metodo chiamato `printInfo()` che stampa le informazioni della persona. Successivamente, abbiamo creato un'istanza della struttura `person1` e abbiamo acceduto alle sue proprietà e chiamato il metodo.

Le strutture in Swift sono molto versatili e possono essere utilizzate per rappresentare dati e oggetti con proprietà e metodi. Sono molto simili alle classi, ma con alcune differenze chiave, ad esempio, sono tipi di valore (copiati quando assegnati o passati a funzioni) mentre le classi sono tipi di riferimento (passati per riferimento).


_________________________________________________________________________________________________


### Esempio di classe in swift

Le classi sono utilizzate per definire oggetti complessi con proprietà e comportamenti associati. Puoi creare molte istanze diverse della stessa classe, ognuna con i propri dati.


```swift
// Definizione della classe "Person"
class Person {
    // Proprietà della classe
    var firstName: String
    var lastName: String
    var age: Int
    
    // Inizializzatore di classe
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    // Metodo di istanza per stampare le informazioni della persona
    func printInfo() {
        print("Nome: \(firstName)")
        print("Cognome: \(lastName)")
        print("Età: \(age)")
    }
}

// Creazione di un'istanza della classe "Person"
let person1 = Person(firstName: "Mario", lastName: "Rossi", age: 30)

// Accesso alle proprietà e chiamata del metodo
print("Nome: \(person1.firstName)")
print("Cognome: \(person1.lastName)")
print("Età: \(person1.age)")

// Chiamata del metodo per stampare le informazioni
person1.printInfo()
```

In questo esempio, abbiamo definito la classe `Person` con tre proprietà: `firstName`, `lastName` e `age`. Abbiamo anche creato un inizializzatore di classe (`init`) per inizializzare le proprietà quando viene creata un'istanza della classe.

Dopo la definizione della classe, abbiamo creato un'istanza di `Person` chiamata `person1` utilizzando l'inizializzatore di classe. Successivamente, abbiamo accesso alle proprietà dell'istanza e chiamato il metodo `printInfo()` per stampare le informazioni sulla persona.


_______________________


### Differenze principali tra Classi e Struct 

In generale, dovresti scegliere tra classi e strutture in base alle tue esigenze specifiche. Usa strutture quando desideri copiare dati in modo indipendente e usale come tipi di valore immutabili. Usa classi quando vuoi condividere dati, sfruttare l'ereditarietà o eseguire operazioni personalizzate quando un'istanza viene deallocata. La scelta dipenderà dalla logica e dal design della tua applicazione.


Le classi e le strutture (`class` e `struct`) sono due costrutti chiave nel linguaggio di programmazione Swift, e ognuno di essi ha delle differenze significative che influenzano come vengono utilizzati. Ecco le principali differenze tra classi e strutture in Swift:

1. **Tipo di valore vs. Tipo di riferimento**:
   - **Strutture**: Le strutture sono tipi di valore. Ciò significa che quando assegni una struttura a una variabile o la passi a una funzione, viene effettuata una copia del valore sottostante. Le modifiche alla copia non influenzano l'originale.
   - **Classi**: Le classi sono tipi di riferimento. Quando assegni una classe a una variabile o la passi a una funzione, stai trattando un riferimento all'istanza della classe. Le modifiche al riferimento influenzano l'istanza originale e tutte le variabili che condividono quel riferimento.

2. **Inizializzatori**:
   - **Strutture**: Le strutture forniscono automaticamente un inizializzatore membro che ti consente di creare un'istanza iniziale con tutte le proprietà inizializzate.
   - **Classi**: Le classi richiedono la definizione esplicita di un inizializzatore di tipo `init` per inizializzare tutte le loro proprietà.

3. **Ereditarietà**:
   - **Strutture**: Le strutture non supportano l'ereditarietà. Non puoi creare una struttura che erediti da un'altra struttura.
   - **Classi**: Le classi supportano l'ereditarietà. Puoi creare una classe che erediti da un'altra classe, consentendo la condivisione di comportamento e proprietà.

4. **Deinizializzatori**:
   - **Strutture**: Le strutture non consentono la definizione di deinizializzatori (`deinit`) poiché vengono deallocati automaticamente quando non sono più in uso.
   - **Classi**: Le classi possono avere deinizializzatori per eseguire operazioni personalizzate quando un'istanza viene deallocata.

5. **Copie e Condivisione**:
   - **Strutture**: Le copie di strutture sono indipendenti e non condividono dati con l'originale. Questo può essere vantaggioso in situazioni in cui è necessaria una copia immutabile dei dati.
   - **Classi**: Le istanze di classi condividono i dati quando vengono assegnate o passate a funzioni. Questo può essere vantaggioso quando si desidera mantenere un'unica istanza condivisa di dati.

6. **Mutabilità**:
   - **Strutture**: Le proprietà delle strutture sono di default immutabili (a meno che non siano contrassegnate come `var`). Devi dichiarare una struttura come `var` per modificarne le proprietà.
   - **Classi**: Le proprietà delle classi sono di default mutabili (a meno che non siano contrassegnate come `let`). Puoi modificarle direttamente.
  

## type alias



In Swift, un type alias (alias di tipo) è un modo per assegnare un nome alternativo a un tipo di dato esistente. Questo può rendere il codice più leggibile e manutenibile, specialmente quando si lavora con tipi di dati complessi o lunghi. Un type alias non crea un nuovo tipo di dato; invece, fornisce solo un nome più breve o descrittivo per il tipo esistente.

Ecco la sintassi per definire un type alias in Swift:

```swift
typealias NomeAlias = TipoOriginale
```

Dove:
- `NomeAlias` è il nome che stai assegnando al tipo originale.
- `TipoOriginale` è il tipo di dato esistente a cui stai assegnando un nome alternativo.

Ecco un esempio per comprendere meglio come funziona:

```swift
typealias Punto = (Double, Double)

let puntoA: Punto = (3.0, 4.0)
let puntoB: Punto = (1.5, 2.5)

func calcolaDistanza(_ da: Punto, _ a: Punto) -> Double {
    let deltaX = a.0 - da.0
    let deltaY = a.1 - da.1
    return sqrt(deltaX * deltaX + deltaY * deltaY)
}

let distanza = calcolaDistanza(puntoA, puntoB)
print("La distanza tra puntoA e puntoB è \(distanza)")
```

In questo esempio, abbiamo definito un type alias `Punto` per rappresentare coppie di coordinate `(Double, Double)` che rappresentano punti nello spazio bidimensionale. Utilizzando `Punto` come alias, il codice diventa più leggibile quando dichiariamo variabili, definiamo funzioni e passiamo argomenti.

Il type alias è particolarmente utile quando si lavora con tipi di dati complessi, come chiusure (`closure`), tipi di collezioni personalizzate o tipi di dati personalizzati definiti dall'utente, poiché può semplificare la sintassi e migliorare la comprensione del codice.










