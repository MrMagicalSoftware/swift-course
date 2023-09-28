//
//  main.swift
//  EserciziVariSwift
//
//  Created by mr on 22/09/23.
//

import Foundation

print("Hello, World!")


/*
Numerical Score     Letter Grade
90 <= score <= 100     'A'
80 <= score < 90     'B'
70 <= score < 80     'C'
60 <= score < 70     'D'
0 <= score < 60     'F'

*/

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {

   let score : Int = ( s1 + s2 + s3 ) / 3
   
    switch score {
        case 90...100:
            return "A"
        case 80..<90:
            return "B"
        case 70..<80:
            return "C"
        case 60..<70:
            return "D"
        default:
            return "F"
    }
   
 
}


print(getGrade(80, 80, 70))


/**
 
 It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.
 

 */


func removeFirstAndLast(_ str: String) -> String {
    
    var myStr = str;
    
    myStr.removeFirst()
    myStr.removeLast()
    return myStr;
}

print(removeFirstAndLast("ciao"))





/*
 
 
 Given an array of integers, return a new array with each value doubled.

 For example:

 [1, 2, 3] --> [2, 4, 6]

 */


func maps(a : Array<Int>) -> Array<Int> {

    
    
    let doubledNumbers = a.map { number in
        return number * 2
    }
    
    
    return doubledNumbers;
}

print(maps(a : [1,2 ,3 ]))


/**
 
 Given a non-empty array of integers, return the result of multiplying the values together in order. Example:

 [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

 func grow(_ arr: [Int]) -> Int {

 }

 */


func grow(_ arr: [Int]) -> Int {

    var ris = 1;
    
    for element in arr {
        ris *= element
    }
    
    return ris;
    
}





/**
 
 
 Your task is to find the first element of an array that is not consecutive.

 By not consecutive we mean not exactly 1 larger than the previous element of the array.

 E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.

 If the whole array is consecutive then return null2.

 The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!

 If you like this Kata, maybe try this one next: https://www.codewars.com/kata/represent-array-of-numbers-as-ranges

 1 Can you write a solution that will return null2 for both [] and [ x ] though? (This is an empty array and one with a single number and is not tested for, but you can write your own example test. )
 
 
 **/


 func firstNonConsecutive (_ arr: [Int]) -> Int? {
     
     
     var index = 0;
     
     while(index < arr.count - 1 ){
         
         
         if( (arr[index+1]  - arr[index] ) > 1  ){
             return arr[index + 1]
         }
         index += 1;
     }
     
     
     return nil
     
 }


/**Soluzione con ciclo for
 
 
 func firstNonConsecutive (_ arr: [Int]) -> Int? {
   for i in 1..<arr.count {
     if arr[i] - arr[i-1] > 1 { return arr[i] }
   }
     return nil
 }
 
 **/



/*

Reversed sequence

Build a function that returns an array of integers from n to 1 where n>0.


*/


func reverseSeq(n: Int) -> [Int] {
    
    var myArr : Array<Int> = [];
    
    
    for i in (1...n).reversed() {
            myArr.append(i)
    }
    return myArr
}


/**
 func reverseSeq(n: Int) -> [Int] {
   return (1...n).reversed()
 }
 */




/**_____________________________________________**/


/*
 
 Your goal is to return multiplication table for number that is always an integer from 1 to 10.

 For example, a multiplication table (string) for number == 5 looks like below:

 1 * 5 = 5
 2 * 5 = 10
 3 * 5 = 15
 4 * 5 = 20
 5 * 5 = 25
 6 * 5 = 30
 7 * 5 = 35
 8 * 5 = 40
 9 * 5 = 45
 10 * 5 = 50

 P. S. You can use \n in string to jump to the next line.

 Note: newlines should be added between rows, but there should be no trailing newline at the end. If you're unsure about the format, look at the sample test
 */

print("####### running multi_table #########")


func multi_table(_ number: Int) -> String {
    
    var myRis = ""
    
    for i in (1...10){
        myRis += "\(i) * \(number) = \(number * i)"
        myRis += i != 10 ? "\n" :""
        
    }
    
    return myRis
    
}
print(multi_table(5))

print("")

print("1 * 5 = 5\n2 * 5 = 10\n3 * 5 = 15\n4 * 5 = 20\n5 * 5 = 25\n6 * 5 = 30\n7 * 5 = 35\n8 * 5 = 40\n9 * 5 = 45\n10 * 5 = 50")


// °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°

/*
 
 
 
 Task

     Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
     In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained (Read the notes for more detail about it)

 Example

 With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:

     1 * (2 + 3) = 5
     (1 * 2) * 3 = 6
     1 + (2 * 3) = 7
     (1 + 2) * 3 = 9

 So the maximum value that you can obtain is 9.
 Notes

     The numbers are always positive.
     The numbers are in the range (1  ≤  a, b, c  ≤  10).
     You can use the same operation more than once.
     It's not necessary to place all the signs and brackets.
     Repetition in numbers may occur .
     You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.

 */

func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    
    var vett :Array<Int> = [1,2,3]

    
   // vett.append(a *(b + c))
   // vett.append(a *(b + c))

    
    return vett.max()!
        
}


// 2, 1, 2

//print(expressionMatter(2, 1, 2))
//print(expressionMatter(2, 1, 1))
print(expressionMatter(3, 5, 7))

//XCTAssertEqual(expressionMatter(3, 5, 7), 105)


var something: Any = 42

print("valore della variable \(something)")
