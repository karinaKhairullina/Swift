import UIKit

protocol HomeworkService {
    
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    func fibonacci(n: Int) -> [Int]

    func sort(rawArray: [Int]) -> [Int]

    func firstLetter(strings: [String]) -> [Character]

}

struct HomeWorkStruct : HomeworkService {
    
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        let integer = x / y
        let remain = x % y
        return (integer, remain)
        
    }

    
    func fibonacci(n: Int) -> [Int] {
        var fibonacciArray = [Int]()
        var n = n - 2
        var number = 0
        var number1 = 1
        fibonacciArray.append(number)
        fibonacciArray.append(number1)
        var summ: Int
        for i in 0..<n {
            summ = number + number1
            fibonacciArray.append(summ)
            number = number1
            number1 = summ
            }
        return fibonacciArray
        
    }

    func sort(rawArray: [Int]) -> [Int] {
        var rawArray = rawArray
        for i in 0..<rawArray.count {
            let index = (rawArray.count - 1) - i
            for j in 0..<index {
                let number = rawArray[j]
                let nextNumber = rawArray[j + 1]
                
                if number > nextNumber {
                    rawArray[j] = nextNumber
                    rawArray[j + 1] = number
                }
            }
        }
        return rawArray
    }


    func firstLetter(strings: [String]) -> [Character] {
        var characters = [Character]()
         for i in 0..<strings.count {
             let str = strings[i]
             let char = str[str.startIndex]
             characters.append(char)
         }
         return characters
     }

     
}



let homeWorkInstance = HomeWorkStruct()
print(homeWorkInstance.divideWithRemainder(11, by: 3))
print(homeWorkInstance.fibonacci(n: 10))
print(homeWorkInstance.sort(rawArray: [5, 6, 5, 3, 8, 1, 9]))
print(homeWorkInstance.firstLetter(strings: ["Хайруллина", "Карина" , "Айратовна", "Сафина", "Далия"]))
