import Foundation

class RandomInputGenerator: DigitsGeneratorProtocol {
    
    func generate() -> [Int] {
        // Swift 4.1 when using Swift 4.2 Int.randon(in: 0..<121)
        return  (0..<20).map { _ in  Int(arc4random_uniform(121)) }
    }
}
