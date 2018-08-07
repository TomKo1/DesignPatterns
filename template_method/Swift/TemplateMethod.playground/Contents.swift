//: Playground - noun: a place where people can play

import UIKit

// https://www.sm-cloud.com/template-method/
// we don't have abstract classes in Swift
// https://cocoacasts.com/how-to-create-an-abstract-class-in-swift
protocol DigitsGenerator{
    func generate() -> [Int]
}

// Swift 2.0 protocol extensions
extension DigitsGenerator{
    
    private func printDigits(array: [Int]){
        for el in array {
            print("\(el) ")
        }
    }
    
    private func sort(){
     print("Not yet implemented")
    }
    // hook
    func shouldPrint()->Bool{
        return true
    }
}

class RandomInputGenerator: DigitsGenerator {
    
    func generate() -> [Int] {
//       arc4random_uniform(42)
        return
    }
}


//var array: [Int] = [ 123, 1, 99, 213, 55, 4]
//array.sort()
//array
