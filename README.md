# swift-course

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




