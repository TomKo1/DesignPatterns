import Foundation


// https://www.sm-cloud.com/template-method/
// we don't have abstract classes in Swift
// https://cocoacasts.com/how-to-create-an-abstract-class-in-swift
protocol DigitsGeneratorProtocol {
    func generate() -> [Int]
    func shouldPrint()->Bool
}

// Swift 2.0 protocol extensions
extension DigitsGeneratorProtocol {
    
    private func printDigits(array: [Int]) {
        for el in array {
            print("\(el) ")
        }
    }
    
    // doesn't require final
    // reference: https://github.com/apple/swift-evolution/blob/master/proposals/0164-remove-final-support-in-protocol-extensions.md
    func getDigits() -> [Int] {
        var array = generate()
        
        if shouldPrint() {
            print(array)
        }
        
        sort(arrayToSort: &array)
        
        if shouldPrint() {
            print(array)
        }
        return array
    }
    
    // inout and & reference
    // https://stackoverflow.com/questions/25255071/does-swift-automatically-clone-arguments
    private func sort(arrayToSort: inout [Int]) {
        arrayToSort.sort()
    }
    
    // hook
    func shouldPrint()->Bool {
        return true
    }
}
