//
//  main.swift
//  PrimoProgrammaSecondoGruppo
//
//  Created by mr on 02/10/23.
//

import Foundation

print("Hello, World!")
print("ciao a tutti ")


// commento singola linea

/*
    commento ,multi linea....
   . .. . . . .
 
 */

// DATA TYPES :::
// swift è tipizzato

var nomeVariabile : Int = 0;

print(nomeVariabile)

var mySaldo = 100;

// double , Bool , Character , String


print("############")
print("\n\n")

var exampleSaldo : Int? = 66
print(exampleSaldo )
print(exampleSaldo! )
print(exampleSaldo ?? 90 )

var myString : String = "ciao a tutti ecco una stringa"

print(myString +  String(  mySaldo ) )
print("ciao a tutti \(mySaldo)")



// operatori matematici
// + - * / %
// creare 2 variabili intere assegnate
//dei valori a queste variabili ,
// stampare la somma , sottr , moltiplic divisione
// e il modulo..


var numero1 = 20;
var numero2 = 10;

print(numero1 + numero2)
print(numero1 * numero2)
print(numero1 / numero2)
print(numero1 % numero2) // --> 0  20 : 10 = 2 con resto 0

numero1 += 1



//costruzione di funzione

func isNumerEven(_ numero : Int) -> Bool {
    
    if(numero % 2 == 0){
        return true;
    }
    else{
        return false;
    }
}

print(isNumerEven(6))

func isNumerEven2( number : Int) -> Bool {
    
    return number % 2 == 0 ? true : false
}

// Operatori logici

// AND &&       OR  ||        ! NEGAZIONE


//CREARE UNA FUNZIONE CHE PRENDA IN INGRESSO
// UNA STRINGA E RITORNA IL NUMERO DI CARATTERI DELLA STRINGA

// CIAO --> 4
// ALBERO -->  6


func contaStringha(parola : String) -> Int{
    
    return parola.count;
}

print("stringa lunga" + String( contaStringha(parola: "ciao")))


//costruire una funzione che prende in ingresso
// 2 numeri, mi ritorna il numero di numeri di pari
// presenti tra i 2 numeri
 // es 20 - 100


func contaPariInRange(_ numero1 : Int , numero2 : Int) -> Int {
        
    var cont = 0
    var i = numero1
    while(i <= numero2){
        if(i % 2 == 0){
            cont += 1
        }
        i += 1
    }
    return cont ;
}


var myName = "Roberto"

for carattere in myName {
    print(carattere)
}

// scrivere una funzione prenda in ingresso
// una stringa e ritorna true se tutta la stringa
// è composta da vocali altrimenti false

// uomoPrimivivo

// es  aaaaeeeee --> true
// es  aaaareee --> false,


func isVowel(carattere : Character) -> Bool {
    return carattere == "a"  ||
            carattere == "e" ||
            carattere == "i" ||
            carattere == "o" ||
            carattere == "u"
}


func isAllVowels(parola : String) -> Bool {
    
    for elemento in parola {
        if( !isVowel(carattere: elemento)){
            return false;
        }
    }
    return true;
}


// dato in ingresso un numero ..calcolare il fattoriale del numero

// 5 fattoriale --->  5 * 4 * 3 * 2 * 1


func fattoriale(numero : Int) -> Int64 {
    
    var fatt  : Int64 = 1;
    var index : Int64 = 1;
    
    while(index <= numero){
        fatt *= index
        index += 1
    }
    
    return fatt;
}

print(fattoriale(numero: 5))


func squareDigits(_ num: Int) -> Int {
    
    let myNum : String = String(num);
    var risultato : String = "" ;
    var myPow : Int;
    
    for elemento in myNum {
        
        myPow = Int( elemento.wholeNumberValue ?? 0 ) * Int ( elemento.wholeNumberValue ?? 0 )
                
        risultato += String(myPow)
    }
    
    return Int(risultato) ?? 0
    
}
print("∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞")

print(squareDigits(9119))


func strongNumber(_ number: Int) -> String {
    //Do Some Magic
  
    var risFatt : Int64 = 0;
    
    for elemento in String(number){
        risFatt += fattoriale(numero: elemento.wholeNumberValue ?? 0)
        
    }
    
    return risFatt ==  number ? "STRONG!!!!" : "Not Strong !!"
}



/**
 Funzione che verifica se un numero è speciale o no.
 
 - Parameter number: Il numero intero da verificare.
 - Returns: Una stringa che indica se il numero è speciale o no. Restituisce "Special!!" se il numero non contiene i numeri 6, 7, 8 o 9, altrimenti restituisce "NOT!!".
 */

func specialNumber(_ number: Int) -> String {
 
    var myValue  = String(number)

    for index in 6...9 {
        if(myValue.contains(String(index))){
            return "NOT!!"
        }
    }
    return "Special!!"
}




var message = "123213131"
// check if message contains "Swift"
var result = message.contains("6")
print(result)



func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    
    var myArr = array;
    myArr.sort()
    
    return myArr[0] + myArr[1]
}


func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    
    return a.contains(x);
}

/**
    
           01    34         67
 
        aa:88:77
 
 
 */

func correct(_ timeString: String?) -> String? {
    
    let componenti  = timeString!.components(separatedBy: ":")
    
    
    print(componenti[0])
    print(componenti[1])
    print(componenti[2])
    
    var ore = Int(componenti[0])
    var minuti = Int(componenti[1])
    var secondi = Int(componenti[2])

    print("*****************")
    
    print(ore!)
    print(minuti!)
    print(secondi!)
    

    minuti = minuti! + (secondi! / 60)
    
    
    
    //return String(format: "%02d:%02d:%02d", ore, minuti, secondi)

    return "ok"
    
    
    
    
    
    /*
    if (second >= 60) {
          correctedMinute += second / 60
          correctedSecond = second % 60
    }
      
    if minute >= 60 {
          correctedHour += minute / 60
          correctedMinute = minute % 60
    }
      
    if hour >= 24 {
          correctedHour = hour % 24
    }
    */
    
    return "ok"
    
    //return String(format: "%02d:%02d:%02d", ore, minuti, secondi)
    
    
   
}

//correct("09:10:01")

/**
 
 "09:10:01" -> "09:10:01"

 "11:70:10" -> "12:10:10"

 "19:99:99" -> "20:40:39"

 "24:01:01" -> "00:01:01"
 
 
 */

/**
 
 XCTAssertNil(correct("001122"))
       XCTAssertNil(correct("00;11;22"))
       XCTAssertNil(correct("0a:1c:22"))
 
 
 
 */

func checkLetters(yourString : String) -> Bool{
    let regex = try! NSRegularExpression(pattern: "^[a-zA-Z]+$", options: [])
    let range = NSRange(location: 0, length: yourString.utf16.count)
    let isMatch = regex.firstMatch(in: yourString, options: [], range: range) != nil
       
    
    return isMatch
}


func correct2(_ timeString: String?) -> String? {
  
    
    if(timeString == nil){
        return "";
    }
    if(timeString == ""){
        return "";
    }
    
   
    
    var tempString : [String];
    var resString : String = "";
    var hhmmss : [Int] = [0,0,0]
   
    if(checkLetters(yourString: timeString!) || timeString!.contains(";") || ! timeString!.contains(":")){
        return ""
    }
    
    tempString = try timeString!.components(separatedBy: ":");

   
    

    if(timeString!.count < 3){
        return ""
    }
    
        
    hhmmss[2] = Int(tempString[2])!;
    hhmmss[1] = Int(tempString[1])!;
    hhmmss[0] = Int(tempString[0])!;
    
    hhmmss[1] += hhmmss[2] / 60;
    hhmmss[2] = hhmmss[2] % 60;
    
    
    hhmmss[0] += hhmmss[1] / 60;
    hhmmss[1] = hhmmss[1] % 60;
    
    
    if(hhmmss[0] > 24){
        hhmmss[0] = hhmmss[0] / 24;
    }
    if(String(hhmmss[0]) == "24"){
        hhmmss[0] = 0
    }
   
    resString += String(format: "%02d:%02d:%02d" , hhmmss[0],hhmmss[1], hhmmss[2]);
    

    return resString ;
  
    //return String(format: "%02d:%02d:%02d", ore, minuti, secondi)

  
}


/**
 
 XCTAssertEqual("09:10:01", correct("09:10:01"))
        XCTAssertEqual("12:10:10", correct("11:70:10"))
        XCTAssertEqual("20:40:39", correct("19:99:99"))
        XCTAssertEqual("00:01:01", correct("24:01:01"))
        XCTAssertEqual("04:01:01", correct("52:01:01"))
 
 
 */

print("^^^^^^^^^^^^^^")

print(correct2("09:10:01")! +  " Ex   09:10:01")
print(correct2("24:01:01")! + " Ex 00:01:01")

func containsValidCharacters(_ input: String) -> Bool {
    let pattern = "^(?=.*[a-zA-Z;])[^\\,.:]*$"
    do {
        let regex = try NSRegularExpression(pattern: pattern, options: [])
        let range = NSMakeRange(0, input.count)
        let matches = regex.matches(in: input, options: [], range: range)
        return matches.count > 0
    } catch {
        return false
    }
}


