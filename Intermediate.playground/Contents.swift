import UIKit

/**
 * Optionals
 *  - about nil
 */
var numberA: Int
// Nil cannot be assigned to type "Int"
//numberA = nil

var numberB: Int?
// Nil can be assigned
numberB = nil
numberB = 2
print(numberB)

var stringA: String
// Nil cannot be assigned to type "String"
//stringA = nil
stringA = "Something"

var stringB: String?
stringB = nil
stringB = "Value"
print(stringB)


// Force Unwrapping Optionals

var optionalNumber: Int? = 20
print(optionalNumber)
// Value of optional type "Int?" must be unwrapped to "Int" by using "!"
print(optionalNumber! + 10)

var optionalNil: String? = nil
print(optionalNil)
// fatal error occur when you tried to unwrap the nil
//print(optionalNil!)

var optionalString: String? = "Jeong"
print(optionalString)
// Value of optional type "String?" must be unwrapped to "String" by using "!"
print(optionalString!)

optionalString = nil

if optionalString != nil {
    print(optionalString!)
}


/**
 * If Let Binging
 */
let bindingName: String? = "Jhon"
var bindingJob: String? = "iOS developer"
var bindingAge: Int? = 29

if let unwrappedBindingName: String = bindingName {
    print(unwrappedBindingName)
} else {
    print("bindingName is nil")
}

// can skip the type
if let unwrappedBindingJob = bindingJob {
    print(unwrappedBindingJob)
} else {
    print("bindingJob is nil")
}

if let unwrappedBindingAge = bindingAge {
    print(unwrappedBindingAge)
} else {
    print("bindingAge is nil")
}

// unwrap multiple values
if let unwrappedBindingName = bindingName,
    let unwrappedBindingJob = bindingJob,
    let unwrappedBindingAge = bindingAge {
    print("\(unwrappedBindingName), his job is \(unwrappedBindingJob) and age is \(unwrappedBindingAge)")
} else {
    print("nil for all")
}


/**
 * Nil Coalescing
 */
var numA: Int? = nil
print(numA)
// if "numA" contains nil, the default of "unwrappedNumA" is going to be 0 (the number is after ?? mark)
var unwrappedNumA1: Int = numA ?? 0
print(unwrappedNumA1)
// can skip type
let unwrappedNumA2 = numA ?? 10
print(unwrappedNumA2)


/**
 * Array
 */

// declare the type using "<XXX>"
let intValueArrayA: Array<Int>
// default is empty
var intValueArrayB = Array<Int>()
// default is empty
let intValueArrayC = [Int]()

intValueArrayA = [1, 2, 3, 4, 5, 6, 7, 8]
intValueArrayB = [Int](repeating: 20, count: 5)

let alphabetArray: Array<Character> = ["A", "B", "C", "D", "E"]
// can skip type
let stringArray = ["korea", "japan", "china", "america", "france"]


// Access Array Values

// count: how many items array has
if stringArray.count > 5 {
    print("We have more than 5 Integer values")
} else {
    print("We have less than 5 Integer values")
}

let firstValue = intValueArrayA.first
let lastValue = intValueArrayA.last
let minValue = intValueArrayA.min()
let maxValue = intValueArrayA.max()

// lowest string value in alphabet order
let stringMinValue = stringArray.min()
let stringMaxValue = stringArray.max()

// optional
print(stringArray.first)

if let firstString = stringArray.first {
    print("The first string is \(firstString)")
}


// Subscripting

var firstString = stringArray[0]
print(firstString)

// ArraySlice
let someString = stringArray[1...3] // using range
print(someString)
print(stringArray)

if stringArray.contains("china") {
    print("We have china inside our array")
} else {
    print("We don't have china inside our array")
}
if stringArray[0...2].contains("america") {
    print("We have america inside our slice array")
} else {
    print("We don't have america inside our slice array")
}


// Manipulating Array Values

var animalNames = ["Lion", "Fox", "Bear"]

//  add item
animalNames.append("Rabbit")
animalNames = animalNames + ["Cat"]
animalNames += ["Tiger"]
animalNames += ["Dog", "Elephant", "Ant"]
animalNames.insert("Panda", at: 3)
// can't use append because it is "let" not "var"
//stringArray.append(contentsOf: "thailand")

// remove item
var deletedAnimal = animalNames.removeLast()
print("removeLast() \(deletedAnimal)")
deletedAnimal = animalNames.remove(at: 1)
print("remove at \(deletedAnimal)")

// get index
animalNames.index(of: "Rabbit") // deprecated
animalNames.firstIndex(of: "Rabbit")

// overwrite
animalNames[1] = "Hippo"
print(animalNames)


// range overwrite
var intArray = [1, 2, 3, 4, 5]

intArray[0...1] = [100, 200]
print(intArray)

intArray[0...2] = [1000, 2000, 3000, 4000, 5000]
print(intArray)

// Fatal error : out of range
//intArray[6...8] = [666, 777, 888]

let number4 = intArray.remove(at: 5)
intArray.insert(number4, at: 0)
print(intArray)

// return new Object sorted
print(intArray.sorted())
print(intArray)

intArray = intArray.sorted(by: {
    (before: Int, after: Int) ->
        Bool in before > after
})
print(intArray)


// Iteration Over Array Values

// basic
for value in intArray {
    print(value)
}
// loop with index
for (index, value) in intArray.enumerated() {
    print("\(index) -> \(value)")
}

func getMultiplicationResult(intNumbers: [Int]) -> Int {
    var multiplyResult = 1
    
    for number in intNumbers {
        multiplyResult = multiplyResult * number
    }
    
    return multiplyResult
}

print(getMultiplicationResult(intNumbers: intArray))

func getDivisionResult(intNumbers: Array<Int>) -> Int {
    var divisionResult = 55
    
    for number in intNumbers {
        divisionResult = divisionResult / number
    }
    
    return divisionResult
}

print(getDivisionResult(intNumbers: intArray))

func getSumResult(intNumbers: [Int]) -> Int {
    var sumResult = 0
    
    for number in intNumbers {
        sumResult += number
    }
    
    return sumResult
}

print(getSumResult(intNumbers: intArray))

func getSubtractionResult(intNumbers: Array<Int>) -> Int {
    var subtractionResult = 100000
    
    for number in intNumbers {
        subtractionResult -= number
    }
    
    return subtractionResult
}

print(getSubtractionResult(intNumbers: intArray))


/**
 * Reduce, Filter and Map Functions
 */
var listA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var listB = ["Lion", "Fox", "Rabbit", "Dog", "Bear"]

// Reduce
func getSumResult(numbers: [Int]) -> Int {
    var result = 0
    
    for number in numbers {
        result += number
    }
    
    return result
}
print(getSumResult(numbers: listA))
// this can be written by here
let sumResult = listA.reduce(0, +) // first one is default, second one is operator
print(sumResult)

let subtractResult = listA.reduce(100, -)
print(subtractResult)

let multiplicationResult = listA.reduce(1, *)
print(multiplicationResult)

let divisionResult = listA.reduce(55, /)
print(divisionResult)


// Filter

let itemsBiggerThan5 = listA.filter({ (a: Int) -> Bool in
    a > 5
})
print(itemsBiggerThan5)

// simple style filter
let itemsWithLetterI = listB.filter { (a: String) -> Bool in
    a.contains("i")
}
print(itemsWithLetterI)

// detail condition
let itemsLessThan7AndGreaterThan3 = listA.filter { (a: Int) ->
    Bool in
    a < 7 && a > 3
}
print(itemsLessThan7AndGreaterThan3)


// Map
// copy each value in a array to a new value

// return a new instance, and original values are not changed
let newListA = listA.map { (a: Int) -> Int in
    a * 2
}
print(newListA)

let uppercasedList = listB.map { (a: String) -> String in
    a.uppercased()
}
print(uppercasedList)

// can return other type (String -> Boolean)
let itemsWithLetterO = listB.map { (a: String) -> Bool in
    a.uppercased().contains("O")
}
print(itemsWithLetterO)


/**
 * Dictionaries
 */

let dictionaryA: Dictionary<String, Int> // key and value

// assign
var dictionaryAssignA = Dictionary<String, Int>()
var dictionaryAssignB = [String : Int]()

dictionaryAssignA = ["Lion" : 100, "Leopard" : 70, "Bear" : 90, "Fox" : 30]
dictionaryAssignB = ["Lion" : 95, "Leopard" : 65, "Bear" : 35, "Fox" : 75]

print(dictionaryAssignA)
print(dictionaryAssignB)

// empty
var emptyDictionary: [Int : Int]
emptyDictionary = [:]

// subscript
print(dictionaryAssignA["Lion"])
print(dictionaryAssignA["Rabbit"]) // Not Fatal error
// only value can be called
//print(dictionaryAssignA[100])

if let dictionaryValue = dictionaryAssignA["Lion"] {
    print(dictionaryValue)
}

// functions
print(dictionaryAssignA.isEmpty) // return Boolean
print(dictionaryAssignA.count) // return Int
print(dictionaryAssignA.keys) // return Array[String]
print(dictionaryAssignA.values) // return Array[Int]

// overwrite
dictionaryAssignB.updateValue(10, forKey: "Bear") // Note this return old value
dictionaryAssignB["Bear"] = 1
print(dictionaryAssignB["Bear"])

// remove
dictionaryAssignB.removeValue(forKey: "Bear") // key and value are removed, not only "value"
dictionaryAssignB["Leopard"] = nil
print(dictionaryAssignB)

// apply
for (key, value) in dictionaryAssignA {
    print("\(key) - \(value)")
}

for key in dictionaryAssignA.keys {
    print("\(key), ", terminator: "")
}

for value in dictionaryAssignA.values {
    print("\(value)", terminator: ", ")
}
print()

// use reduce and filter functions on dictionaries
let keys = dictionaryAssignA.reduce("", {
    // $0: initial value(String)
    // $1: second value(dictionaryAssignA)
    // .0: key
    $0 + "\($1.0), " // $1.key
})
print(keys)

let values = dictionaryAssignA.reduce("", {
    // .1: value
    $0 + "\($1.1), " // $1.value
})
print(values)

print(dictionaryAssignA.filter { $0.1 > 80 })


/**
 * Sets
 */

let setOne: Set<Int>

// assign
var setTwo = Set<Int>()
print(setTwo)

// set and array looks similar
// set can be assigned a specific value only once
// and do not remember order
setTwo = [1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 6]
let arrayTwo = [1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 6]

print(setTwo)
print(arrayTwo)

// functions
print(setTwo.removeAll()) // nothing
print(setTwo.isEmpty) // return Boolean
print(setTwo.count) // return Int
print(setTwo.contains(3)) // return Boolean
print(setTwo.first) // return first value optionaly

var koreanFoods: Set = ["bibimbab", "kimchi", "kimbab", "sundae", "rice"]
var japaneseFoods: Set = ["sushi", "natto", "oyakodon", "ramen", "rice"]

// insert and remove
koreanFoods.insert("kukbab")
let removedFood = koreanFoods.remove("sundae")
print(koreanFoods)


// functions with two sets

// put values together
let unionFoods = koreanFoods.union(japaneseFoods)
print(unionFoods)

// the values existed in two sets
let intersectFoods = koreanFoods.intersection(japaneseFoods)
print(intersectFoods)

// the values existed only in koreanFoods Set
let subtractFoods = koreanFoods.subtracting(japaneseFoods)
print(subtractFoods)

// remove the values existed in two sets
let symmetricDiffrenceFoods = koreanFoods.symmetricDifference(japaneseFoods)
print(symmetricDiffrenceFoods)

