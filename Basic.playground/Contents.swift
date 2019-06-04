import UIKit

/*
 Variables and Constants
 */
//可変変数
var num1: Int = 25
num1 = 100
num1
//不変変数
let num2: Int = 50
//num2 = 51  //できない

var num3: Int = 3_000_0
var num4: Float = 3.14
var num5: Double = 134.6125323456

//num3 = num5  //型が一致してないためできない
num3 = Int(num5)  //convertする


/*
 tuple
 */
let tuple1: (num1: Int, num2: Int) = (10, 50)
var tuple_test1 = tuple1.0

var tuple2: (String, Double) = ("aaa", 2.25)
var tuple_test2 = tuple2.0

let tuple3: (num1: Int, num2: Int, num3: Int) = (10, 20, 40)


/*
 Arithmetic Operations
 */
var add = 1 + 2
var subtract = 10 - 3
var division = 60 / 2
var module = 60 % 2


/*
 increment and decrement
 */
var incNum1 = 1
var incNum2 = incNum1

//incNum2 = incNum2 + 1
incNum2 += 1

var decNum1 = 10
var decNum2 = decNum1

//decNum2 = decNum2 - 1
decNum2 -= 1


/*
 Operator Precedence
 */
// 0 : ()
// first : * , / , %
// second : + , -

var preNum1 = 2 * 5 + 4 / 2
// (2 * 5) + (4 / 2)

var preNum2 = 6 * 5 / 3 + 30 - 5 % 2
// (6 * 5 / 3) + 30 - (5 % 2) = 10 + 30 - 1

var preNum3 = 6 * 5 / 3 + (30 - 5) % 2
// (6 * 5 / 3) + (25 % 2) = 10 + 1


/*
 Mixed types
 */
let amountOfMoney = 250.5   //Double
let numberOfApp = 20        //Int

//amountOfMoney * numberOfApp = ERROR  ->Need to cast to Int or Double
let resultOfDouble = amountOfMoney * Double(numberOfApp)
let resultOfInt = Int(amountOfMoney) * numberOfApp

// Double(1) -> 1.0
// Int(1.2) -> 1


/*
 Comparison Operators
 */
var ok = true
var notOk = false
var yes = true
var no = false

var isBiggerThan = (1 > 10)
var isSmallerThan = (1 < 10)
var isEquarTo = (1 == 1)
var isNotEquarTo = (1 != 10)
var isBiggerOrEquarTo = (10 >= 9)
var isSmallerOrEquarTo = (10 <= 9)


/*
 Logical Operator
 */
var andex1 = true && true
var andex2 = true && false
var andex3 = false && true
var andex4 = false && false

var andex5 = (10 > 5) && (4 < 5)
var andex6 = (6 > 9) && (4 < 10)

var orex1 = true || true
var orex2 = true || false
var orex3 = false || true
var orex4 = false || false

var orex5 = (50 > 40) || (100 < 10)
var orex6 = (20 > 100) || (200 < 10)


/*
 Characters and Strings
 */
let charA: Character = "A"
let A = "A"
let charB = "B"
let B: Character = "B"

let emojichar: Character = "😢"

let stringName: String = "jeong"
var stringJob: String = "programmer"
let stringHome = "akabanekita"


/*
 Interpolation
 */
let name = "Suhi"
let age = 28

let desc = "her name is \(name) and she is \(age) years old"
// [\] = option key + ¥


/*
 Equality and String Methods
 */
let fruitA = "apple"
let fruitB = "banana"

let isfruitAEqualsfruitB = fruitA == fruitB

//index alphabet "a" < "b"
let charactersOrder = "apple" < "banana"
//index alphaber "e" < "y"
let charactersOrder2 = "apple" < "apply"

let str1 = "value1"
str1.count

let str2 = "value2"
str2.characters.count

let str3 = "Jeong Soohee"
str3.uppercased()
str3.lowercased()


/*
 if statement
 */
var ifnum1 = 30
var ifnum2 = 50

if ifnum1 > ifnum2 {
    print("\(ifnum1) is greater than \(ifnum2)")
} else if ifnum1 == ifnum2 {
    print("\(ifnum1) is equals to \(ifnum2)")
} else {
    print("\(ifnum1) is less than \(ifnum2)")
}

var animal1 = "Lion"
var animal2 = "Tiger"

if animal1 == "Lion" && animal2 == "Bear" {
    print("Great!!")
} else if animal1 == "Lion" || animal2 == "Bear" {
    print("Nice!!")
} else if animal1.isEmpty && animal2.isEmpty {
    print("Andser Something!!")
}


/*
 Scope
 */
var snum1 = 20
var snum2 = 30

if snum1 < snum2 {
    var result = snum1 + snum2
    
    if snum2 > 25 {
        result += 5
        
        _ = 2
    }
    
    _ = 3
    //var testResult = test1 + test2 ->cannot use 'test1'
}


/*
 Ternary Operator
 */
let boxerAScores = 200
let boxerBScores = 170

var minScore1: Int = 0
if boxerAScores < boxerBScores {
    minScore1 = boxerAScores
} else {
    minScore1 = boxerBScores
}
var minScore2 = boxerAScores < boxerBScores ? boxerAScores : boxerBScores
    /*
     In Kotlin
     var minScore2 = if (boxerAScores < boxerBScores) boxerAScores else boxerBScores
     */

var maxScore1: Int = 0
if boxerAScores < boxerBScores {
    maxScore1 = boxerBScores
} else {
    maxScore1 = boxerAScores
}
var maxScore2 = boxerAScores > boxerBScores ? boxerAScores : boxerBScores
    /*
     In Kotlin
     var maxScore2 = if (boxerAScores > boxerBScores) boxerAScores else boxerBScores
     */


/*
 Switch Statement
 */
let switchScores = 50

switch switchScores {
    case 50: print("Good")
    case 80: print("Great")
    case 100: print("Execellent")
    default: print("Not valid")
}

let switchName = "Jack"
//let switchList = Array("Jone", "Jack", "Jason")

switch switchName.uppercased() {
    case "JONE", "JACK": print("This is \(switchName)")
    default: break
}

let switchValue = 11

switch switchValue {
    case let n where n % 2 == 0:
        print("\(n) is even")
    case let n where n % 2 != 0:
        print("\(n) is odd")
    default:
        break
}
//switch switchValue {
//case (var n = switchValue % 2) == 0:
//    print("\(switchValue) is even")
//case (switchValue % 2) != 0:
//    print("\(switchValue) is odd")
//default:
//    break
//}

let switchNumbers: (sn1: Int, sn2: Int, sn3: Int) = (1, 3, 3)

switch switchNumbers {
case (10, 20, 30):
    print("these are the collect values")
    fallthrough     //continue the next case
case (_, 20, 30):   //"_" means that don't mind about the first number
    print("There is no the first number")
    fallthrough
case (10, _, 30):
    print("There is no the second number")
    fallthrough
case (10, 20, _):
    print("There is no the last number")
case (100, 200, 300):
    print("Other values")
default:
    print("Invalid Values")
}

switch switchNumbers {
case (let testSN1, let testSN2, let testSN3):
    print("This is testSN1: \(testSN1), and testSN2: \(testSN2), and testSN3: \(testSN3)")
    //fallthrough
case (_, let testSN2, let testSN3):
    print("This is testSN2: \(testSN2), and testSN3: \(testSN3)")
}


switch switchNumbers {
case (let testSN1, let testSN2, let testSN3) where testSN2 == testSN1 * testSN3:
    print("Right!!")
case (let testSN1, _, let testSN3) where testSN1 == testSN3 * testSN3:
    print("Nice!!")
default:
    break
}



/*
 * Ranges
 */
let closedRangesExample = 20 ... 30 //closed range
//> 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30

let halfOpenRangesExample = 10 ..< 15 //(half open)range
//> 10, 11, 12, 13, 14 (not include the 15)

let studentGrade = 80
var message: String = ""

switch studentGrade {
case 90 ... 100:
    message = "Awesome"
case 80 ..< 90:
    message = "Greate"
case 70 ..< 80:
    message = "Good"
case 60 ..< 70:
    message = "Not bad"
default:
    message = "Try again!"
}


/*
 * For Loops
 */

let count = 10
var sum1 = 0
var sum2 = 0

// the value of "i" -> 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
for i in 0 ..< count {
    
    sum1 = sum1 + 1
    sum2 += i
    
    print("Here is the value of sum1: \(sum1), sum2: \(sum2)")
}


var loopNum1 = 2
var loopNum2 = 2

// exacute 5 times (0, 1, 2, 3, 4)
for _ in 0 ..< 5 {
    
    loopNum1 = loopNum1 * loopNum2
    print("loopNum1 value: \(loopNum1)")
}


/*
 * While Loop
 */

//while true {
//    print("The condition is TRUE, so this will print over and over")
//}
//while false {
//    print("The condition is FALSE, so this never print")
//}

var whileNum = 0

while whileNum < 5 {
    print("whileNum is \(whileNum)")
    whileNum += 1
}


/*
 * Repeat While Loop
 */

let r_w_number1 = 10
var r_w_counter = 0
var r_w_result = 0

repeat {
    r_w_result = r_w_result + r_w_number1 * 2
    print(r_w_result)
    r_w_counter += 1
} while r_w_counter < 5


let r_w_number2 = 10
var r_w_counter2 = 0

repeat {
    var r_w_result2 = 0 //repeatする度に0になる
    r_w_result2 = r_w_result2 + r_w_number1 * 2
    print(r_w_result2)
    
    r_w_counter2 += 1
} while r_w_counter2 < 5


let r_w_number3 = 10
var r_w_counter3 = 1
var r_w_result3 = 0

repeat {
    r_w_result3 = r_w_result3 + r_w_counter3 * 3
    print(r_w_result3)
    r_w_counter3 += 1
} while (r_w_counter3 < 1) //Must do 1 Time


/*
 * Break Statement
 */
var breakNum = 0

while (breakNum < 7) {
    print(breakNum)
    
    if breakNum == 4 {
        break   // Finish the while
    }
    breakNum += 1  // Do not exacute this line because the break come the upper line
}
print("the while is ENDED and the final value of breakNum is \(breakNum)")


/*
 * Continue Statement
 */
var oddNumbers = [Int]()
for oddNumber in 0 ..< 15 {
    
    if (oddNumber % 2 == 0) {
        continue    // continue to the next oddNumber right now
    }
    oddNumbers.append(oddNumber)
}
print("These are the odd numbers: \(oddNumbers)")

var evenNumbers = [Int]()
for evenNumber in 0 ..< 15 {
    
    if (evenNumber % 2 != 0) {
        continue
    }
    evenNumbers.append(evenNumber)
}
print("These are the even numbers: \(evenNumbers)")

print("PT1")
firstLoop: for loopNumberA in 0 ..< 5 {
    print("loopNumberA: \(loopNumberA)")
    
    // new loop for each firstLoop's loopNumberA
    secondLoop: for loopNumberB in 0 ..< 5 {
        print("     /loopNumberB: \(loopNumberB)")
    }
}

print("PT2")
firstLoop: for loopNumberA in 0 ..< 5 {
    print("loopNumberA: \(loopNumberA)")
    
    secondLoop: for loopNumberB in 0 ..< 5 {
        // loopNumberA: loopNumberB
        // 0: 0,
        // 1: 0, 1,
        // 2: 0, 1, 2 ...
        if loopNumberA < loopNumberB {
            continue    // default: control the secondLoop
        }
        print("     /loopNumberB: \(loopNumberB)")
    }
}

print("PT3")
firstLoop: for loopNumberA in 0 ..< 5 {
    print("loopNumberA: \(loopNumberA)")
    
    secondLoop: for loopNumberB in 0 ..< 5 {
        // loopNumberA: loopNumberB
        // 0: 0, 1, 2
        // 1: 0, 1, 2
        // 2: 0, 1, 2 ...
        if loopNumberB == 3 {
            continue firstLoop  // control the firstLoop
        }
        print("     /loopNumberB: \(loopNumberB)")
    }
}


/*
 * Functions
 */
// メソッドを定義
func funcPrintSomething() {
    print("funcPrintSomething")
}
// メソッドを呼び出し
funcPrintSomething()

// -> : 戻り値
func funcSumOfTwoNumbers() -> Int {
    print("This is funcSumOfTwoNumbers Function")
    let result = 3 * 5
    return result
}
// メソッドの戻り値をそのままプリントする
print(funcSumOfTwoNumbers())

// 引数ありのメソッド
func funcSumOne(one: Int) -> Int {
    print("This is funcSumOne(one) Function")
    return one + 1    // returnで加工も可能
}
print(funcSumOne(one: 10))   //引数名を指定する必要がある

// 引数ありのメソッド
func funcSumOfNextNumbers(one: Int, two: Int) -> Int {
    print("This is funcSumOfNextNumbers(one, two) Function")
    return one * two    // returnで加工も可能
}
print(funcSumOfNextNumbers(one: 2, two: 4))   //引数の順番を守る必要がある


/*
 * Using Parameters
 */
func addTenValuesToThisNumberAndPrint(number: Int) {
    print("10 + \(number) = \(10 + number)")
}
addTenValuesToThisNumberAndPrint(number: 5)

func printTheSumOfThisNumbers(number1: Int, number2: Int) {
    print("\(number1) + \(number2) = \(number1 + number2)")
}
printTheSumOfThisNumbers(number1: 5, number2: 100)

// NUMBER: ExternalName -> use this name at OUT of method
// number2: InsideName -> use this name IN method
func printTheSumOfThisNumbers(number1: Int, NUMBER number2: Int) {
    print("\(number1) + \(number2) = \(number1 + number2)")
}
printTheSumOfThisNumbers(number1: 500, NUMBER: 1)

// NOT need nor want ExternalName "_"
func printTheSumOfThisThreeNumbers(_ number1: Int, number2: Int, _ number3: Int) {
    print("\(number1) + \(number2) + \(number3) = \(number1 + number2 + number3)")
}
printTheSumOfThisThreeNumbers(1, number2: 2, 3)

// parameter has a DEFAULT value
func printTheSumOfNumbers(number1: Int, number2: Int = 2) {
    print("\(number1) + \(number2) = \(number1 + number2)")
}
printTheSumOfNumbers(number1: 5)


/*
 * Functions that return the values
 */
// return String
func returnYourName() -> String {
    return "soohee"
}
// save the return values at "myName"
var myName = returnYourName()
print(myName)

// return Int
func sumTwoNumbers(number1: Int, number2: Int) -> Int {
    return num1 + num2
}
var resultOfSum = sumTwoNumbers(number1: 11, number2: 110)
print("\(resultOfSum)")

// return multiple values
func sumAndSubtractTheTwoNumber(number1: Int, number2: Int)
    -> (resultOfSum: Int, resultOfSubtrack: Int) {
        
        return (number1 + number2, number1 - number2)
}
let resultOfSumAndSubtract = sumAndSubtractTheTwoNumber(number1: 10, number2: 7)

var sumResult = resultOfSumAndSubtract.resultOfSum
var subtractResult = resultOfSumAndSubtract.resultOfSubtrack
print("\(sumResult) and \(subtractResult)")


/*
 * More about Parameters in Swift
 */
func multiflyAndPrintThisNumber(number: Int) {
    var myNumber = number
    myNumber *= 7
    
    //"number" is a let constant, so is not mutable
//    number += number
    
    print("inMethod: \(myNumber)")
}
var numberA = 7
multiflyAndPrintThisNumber(number: numberA)
print("outMethod: \(numberA)")

func multiflyAndPrintThisNumberInout(number: inout Int) {
    number = number * 7

    print("inMethod: \(number)")
}
var numberB = 7
multiflyAndPrintThisNumberInout(number: &numberB)   // change the numberB becouse of "inout"
print("outMethod: \(numberB)")


/*
 * Swift Standard Library Functions
 */
let maxinumNumberOfTwoNumbers = max(50, 90)
print(maxinumNumberOfTwoNumbers)

let maxinumNumberOfThreeNumbers = max(2, 1, 3)
print(maxinumNumberOfThreeNumbers)

let maxinumNumberOfAllNumbers = max(3, 79, 31, 56, 2, 57)
print(maxinumNumberOfAllNumbers)

let mininumNumberOfTwoNumbers = min(1000, 100)
print(mininumNumberOfTwoNumbers)

let mininumNumberOfThreeNumbers = min(10, 30, 20)
print(mininumNumberOfThreeNumbers)

let mininumNumberOfAllNumbers = min(100, 200, 300, 400, 500, 600, 70)
print(mininumNumberOfAllNumbers)

let absoluteValue = abs(-1.34589) //nonNegative value of the original value
print(absoluteValue)


/*
 * Functions And Variables
 */
func multiplyTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}
// We can assign a function(multiplyTwoNumbers) to variable(myFunction)
let myFunction: (Int, Int) -> Int = multiplyTwoNumbers

let myResult = myFunction(2, 6)
print(myResult)


func printTheResultOfOperationToTheConsole(
    function: (Int, Int) -> Int,
    firstNumber: Int,
    secondNumber: Int
    ) {
    
    let resultValue = function(firstNumber, secondNumber)
    print(resultValue)
}
printTheResultOfOperationToTheConsole(function: multiplyTwoNumbers, firstNumber: 4, secondNumber: 10)
