# swift-course

Documentazione 

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/

https://www.javatpoint.com/swift-syntax

https://www.tutorialspoint.com/swift/index.htm

## Programma



GIORNO 1
Introduzione
Guida all’ Apple Developer Program
Installazione Plugins, Code Snippets e File Templates
Creare un progetto con playground e configurare l&#39;editor
Intro alla sintassi di swift
Le basi della Programmazione ad Oggetti
Progettare le Classi
Architetture
Le basi del linguaggio Swift (Parte 1)
I Tipi fondamentali
Le Variabili
Le costsanti
Type-Interface
Type Alias
I Numeri e le conversioni
Gli Operatori
Manipolare le stringhe

GIORNO 2
Le basi del linguaggio Swift (Parte 2)
I tipi collezione
Tuple
Array
Set
Dictionary
Il Control Flow (if/if Else/For-In etc.)
Gli Optional-Type
Le Funzioni in Swift
Introduzione alle funzioni
Funzioni e Scope
Funzioni e Parametri
I Tipi funzione
Funzioni Annidate


Le Closure
Le funzioni Globali
Costrutti Swift
L&#39;enumerazione
Gli Struct
Le Classi
Proprietà Swift
Stored Property
Computed Property
Readonly Property
Lazy Property
Property Observers
Aspetti Avanzati Swift
Protocol
Generics
Extension
Error Handling

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
Struttura dei progetti
SwiftUI basics (concetto alla base del sistema)


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

## Numeri in swift 

I numeri in Swift sono gestiti attraverso vari tipi di dati, e possono essere suddivisi in tre categorie principali:

1. **Numeri Interi (Integers)**: Rappresentano valori interi senza parte frazionaria. Ecco alcuni dei tipi di dati per i numeri interi in Swift:

   - `Int`: Questo è il tipo principale per i numeri interi e dipende dalla piattaforma (32 o 64 bit).
   - `Int8`, `Int16`, `Int32`, `Int64`: Questi sono tipi di numeri interi con dimensioni specifiche.
   - `UInt`: Rappresenta numeri interi senza segno.
   - `UInt8`, `UInt16`, `UInt32`, `UInt64`: Sono tipi di numeri interi senza segno con dimensioni specifiche.

   Esempio:
   ```swift
   let intValue: Int = 42
   let uintValue: UInt = 10
   ```

2. **Numeri in Virgola Mobile (Floating-Point Numbers)**: Rappresentano numeri decimali, inclusi quelli con parte frazionaria. I principali tipi di dati per i numeri in virgola mobile sono:

   - `Double`: Doppia precisione, adatto per la maggior parte dei calcoli con numeri decimali.
   - `Float`: Singola precisione, utilizzato quando è necessaria una maggiore efficienza in termini di memoria.

   Esempio:
   ```swift
   let doubleValue: Double = 3.14159
   let floatValue: Float = 2.71828
   ```

3. **Conversioni tra Tipi di Dati Numerici**: È possibile convertire tra diversi tipi numerici in Swift utilizzando operazioni di casting. Ad esempio, è possibile convertire un `Int` in un `Double` o viceversa.

   Esempio:
   ```swift
   let intValue: Int = 42
   let doubleValue: Double = Double(intValue) // Conversione da Int a Double
   let intFromDouble: Int = Int(doubleValue) // Conversione da Double a Int
   ```

È importante prestare attenzione alle conversioni tra tipi numerici, in quanto possono comportare la perdita di dati o errori se non gestite correttamente. Swift richiede conversioni esplicite per evitare sorprese indesiderate durante l'esecuzione del codice.


_______________________________________________________________

## Operatori in swift


Swift offre una varietà di operatori che puoi utilizzare per eseguire operazioni matematiche, confronti e altre azioni. Ecco una panoramica degli operatori principali in Swift:

1. **Operatori Aritmetici**:
   - `+`: Addizione.
   - `-`: Sottrazione.
   - `*`: Moltiplicazione.
   - `/`: Divisione.
   - `%`: Resto della divisione (modulo).

   Esempio:
   ```swift
   let somma = 5 + 3 // 8
   let differenza = 10 - 4 // 6
   let prodotto = 6 * 2 // 12
   let divisione = 8 / 4 // 2
   let resto = 10 % 3 // 1
   ```

2. **Operatori di Assegnazione**:
   - `=`: Assegna un valore a una variabile o costante.
   - `+=`, `-=`, `*=`, `/=`, `%=`: Eseguono un'operazione e assegnano il risultato alla variabile.

   Esempio:
   ```swift
   var x = 5
   x += 3 // x diventa 8
   ```

3. **Operatori di Confronto**:
   - `==`: Uguale a.
   - `!=`: Diverso da.
   - `<`: Minore di.
   - `<=`: Minore o uguale a.
   - `>`: Maggiore di.
   - `>=`: Maggiore o uguale a.

   Esempio:
   ```swift
   let a = 10
   let b = 5
   let isEqual = a == b // false
   let isGreaterThan = a > b // true
   ```

4. **Operatori Logici**:
   - `&&`: AND logico.
   - `||`: OR logico.
   - `!`: NOT logico.

   Esempio:
   ```swift
   let condition1 = true
   let condition2 = false
   let result = condition1 && condition2 // false
   ```

5. **Operatori di Intervallo**:
   - `...`: Intervallo chiuso (include entrambi gli estremi).
   - `..<`: Intervallo semichiuso (include il primo estremo ma esclude il secondo).

   Esempio:
   ```swift
   let range1 = 1...5 // Contiene 1, 2, 3, 4, 5
   let range2 = 0..<3 // Contiene 0, 1, 2
   ```

6. **Altri Operatori**:
   - `?:`: Operatore ternario condizionale.
   - `??`: Operatore di null coalescing.
   - `&`, `|`, `^`: Operatori bitwise (per manipolare i bit).

   Esempio:
   ```swift
   let condition = true
   let value = condition ? "Vero" : "Falso"
   let result = someValue ?? defaultValue
   let bitwiseResult = 0b101 & 0b110 // 0b100
   ```


_______________________________________________________________




## Manipolare le stringhe 


La manipolazione delle stringhe è un'operazione comune nella programmazione, e Swift offre molte funzioni e metodi per lavorare con le stringhe. Ecco alcune delle operazioni più comuni per manipolare le stringhe in Swift:

1. **Concatenazione di Stringhe**:
   Per unire due o più stringhe, puoi utilizzare l'operatore `+` o il metodo `+` dell'istanza di stringa.

   ```swift
   let nome = "Alice"
   let cognome = "Rossi"
   let nomeCompleto = nome + " " + cognome
   ```

2. **Interpolazione di Stringhe**:
   Puoi incorporare valori nelle stringhe utilizzando l'interpolazione di stringhe con il carattere `\()`. 

   ```swift
   let età = 30
   let messaggio = "La mia età è \(età) anni."
   ```

3. **Ricerca e Sostituzione**:
   Puoi cercare una sottostringa all'interno di una stringa e sostituirla utilizzando i metodi `range(of:)` e `replacingOccurrences(of:with:)`.

   ```swift
   let testo = "Ciao, mondo!"
   if let range = testo.range(of: "mondo") {
       let nuovoTesto = testo.replacingOccurrences(of: "mondo", with: "universo")
   }
   ```

4. **Divisione delle Stringhe**:
   Puoi dividere una stringa in sottostringhe utilizzando il metodo `split(separator:)`.

   ```swift
   let elenco = "mele, banane, arance"
   let frutta = elenco.split(separator: ", ")
   ```

5. **Conversione di Maiuscole e Minuscole**:
   Puoi convertire una stringa in maiuscolo o minuscolo utilizzando i metodi `uppercased()` e `lowercased()`.

   ```swift
   let testo = "Hello, World!"
   let maiuscolo = testo.uppercased()
   let minuscolo = testo.lowercased()
   ```

6. **Rimozione degli Spazi Bianchi**:
   Puoi rimuovere gli spazi bianchi in eccesso all'inizio e alla fine di una stringa utilizzando il metodo `trimmingCharacters(in:)`.

   ```swift
   let testo = "    Ciao, mondo!    "
   let pulito = testo.trimmingCharacters(in: .whitespacesAndNewlines)
   ```

7. **Verifica della Lunghezza della Stringa**:
   Puoi ottenere la lunghezza di una stringa utilizzando la proprietà `count`.

   ```swift
   let testo = "Ciao, mondo!"
   let lunghezza = testo.count // Restituisce 12
   ```

8. **Estrazione di Sottostringhe**:
   Puoi estrarre una sottostringa da una stringa utilizzando il metodo `prefix(_:)` o `suffix(_:)`.

   ```swift
   let testo = "Ciao, mondo!"
   let prefisso = testo.prefix(4) // "Ciao"
   let suffisso = testo.suffix(6) // "mondo!"
   ```


## modificatori di accesso delle classi 


Esistono sono quattro modificatori di accesso che puoi utilizzare per controllare l'accesso alle classi, alle proprietà, ai metodi e ad altre entità all'interno del tuo codice. Questi modificatori ti consentono di determinare quali parti del tuo codice possono accedere a determinate entità e quali non possono. Ecco i quattro modificatori di accesso in Swift:



1. `public`: Il più alto livello di accesso. Le entità contrassegnate come pubbliche sono accessibili da qualsiasi parte del tuo codice e da moduli esterni. Questo è spesso utilizzato per le API pubbliche di un framework o di una libreria.

2. `internal`: Questo è l'accesso predefinito quando non viene specificato alcun modificatore di accesso. Le entità contrassegnate come interne sono accessibili solo all'interno dello stesso modulo (cioè dello stesso progetto o framework).

3. `fileprivate`: Questo modificatore limita l'accesso alle entità all'interno dello stesso file in cui sono definite. È utile per nascondere dettagli di implementazione all'interno di un file.

4. `private`: Questo è il livello di accesso più restrittivo. Le entità contrassegnate come private sono accessibili solo all'interno della stessa classe o struttura in cui sono definite. È utile per nascondere dettagli di implementazione all'interno di un tipo.


In questo esempio, `publicProperty` e `publicMethod` sono accessibili da qualsiasi parte del codice, `internalProperty` e `internalMethod` sono accessibili solo all'interno dello stesso modulo, `fileprivateProperty` e `fileprivateMethod` sono accessibili solo all'interno dello stesso file e `privateProperty` e `privateMethod` sono accessibili solo all'interno della stessa classe `MyClass`.


```swift
public class MyClass {
    public var publicProperty: Int = 0
    internal var internalProperty: String = ""
    fileprivate var fileprivateProperty: Double = 0.0
    private var privateProperty: Bool = false

    public init() { }
    
    public func publicMethod() { }
    internal func internalMethod() { }
    fileprivate func fileprivateMethod() { }
    private func privateMethod() { }
}
```







   







