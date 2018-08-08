import Foundation

class UserInputGenerator: DigitsGeneratorProtocol {
    
    func generate() -> [Int] {
        var array: [Int] = []
        
        func appendRandomInt(errorString: String) {
            print(errorString)
            let randomInt = Int(arc4random_uniform(121))
            array.append(randomInt)
            array.append(randomInt)
        }
        for _ in 0...20 {
            print("Give number")
            if let num = readLine() {
                if let numInt: Int = Int(num) {
                    array.append(numInt)
                } else {
                    appendRandomInt(errorString: "This was not integer.")
                }
            } else {
                appendRandomInt(errorString: "Input can't be blank.")
            }
        }
        return array
    }
    
    func shouldPrint() -> Bool {
        return false
    }
}
