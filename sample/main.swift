//0603  Classes and Structures
/* Разница между классом и стуктурой в способе передачи
    Структура - передается по значению (создается копия)
    Класс - передается по ссылке (создается ссылка на класс)
*/

// Struct
struct myClass {
    var prop1 = 5
    let prop2 = 10
    init (p1:Int) {             // Функция инициализации - НЕОБЯЗАТЕЛЬНА
        prop1 = p1
    }
    var prop3: Int {       // Computed property - Вычисляемое свойство
        get {
            return prop1 * prop2
        }
        set (param) {      // Принимает значение в класс
            prop1 = param
        }
    }
    
    func someMethod() -> Int {
        return 123
    }
    
}

var myClassInstance = myClass(p1:300) /* скобки для инициализации экземпляра
вернее запуска фунции-инициализатора, если она
есть*/

//myClassInstance.prop3 = 22   // Передаем значение prop3, которое устанавливает prop2
print (myClassInstance.prop3) // А тут смотрим, что вышло после умножения

/*
// Class
class myClass {
    var prop1 = 5
    let prop2 = 10
    init (p1:Int) {             // Функция инициализации - НЕОБЯЗАТЕЛЬНА
        prop1 = p1
    }
    var prop3: Int {       // Computed property - Вычисляемое свойство
        get {
            return prop1 * prop2
        }
        set (param) {      // Принимает значение в класс
            prop1 = param
        }
    }

    func someMethod() -> Int {
        return 123
}
    
}

var myClassInstance = myClass(p1:300) /* скобки для инициализации экземпляра
                                вернее запуска фунции-инициализатора, если она
                                есть*/

//myClassInstance.prop3 = 22   // Передаем значение prop3, которое устанавливает prop2
print (myClassInstance.prop3) // А тут смотрим, что вышло после умножения
*/


/*
// Enumeration
enum myEnum {
    case enum1
    case enum2
}
myEnum.enum1

enum direction {
    case North
    case West, East
    case South
}
direction.East
var dir1 = direction.East
dir1 = .South

var dir2: direction

dir2 = .West

switch dir2 {
case .North:
    print("You are going North")
case .West:
    print("You are going West")
default:
    print("Some were")
}
// ----------------------
enum Identifier {
    case Number (Int, String, Bool)
    case Codename (String)
}

var id = Identifier.Number(555, "V", true)
var name = Identifier.Codename("Brown")
//id = Identifier.Codename("Brown")

switch id {
    case .Number (let n):
        var temp = n.0
        print("Eployee number is \(temp)")
        print("Eployee full-number is \(n)")
    case .Codename (let c):
        print("Eployee Codename is \(c)")
}

// ----------------------------
enum Direction: String {
    case North = "1"
    case South
    case East
    case West
}

print(Direction.North.rawValue) // .rawValue
*/

/*
// FizzBuzz
func fizzbuzz (startingInt start: Int, endingInt end: Int) {
    for i in start...end {
        let mods = (i % 3, i % 5)
        print ( "test \(i) - i%3 - \(i%3) and i%5 - \(i%5) ")
    
        switch mods {
        case (0, 0):
            print("fizzbuzz")
        case (0, _):
            print("fizz")
        case (_, 0):
            print("buzz")
        default:
            print("\(i)")
        }
    }
}

fizzbuzz(startingInt: 0, endingInt: 10)
*/
/*
// Замыкания (лямда выражения)
// - - - - - - - - - - - - - - - - - - - -
func myFunction (name: String) ->String {
    return " "
}

func inputFunction (f: (String) ->String, input: String) {
        f(input)
}
// - - - - - - - - - - - - - - - - - - - -
//
var names = ["Vasya", "Petya", "Oleg", "Nina", "Zina"]
func order (first:String, second:String)->Bool {
    return first < second
}
//names.sort({$0 < $1})
var sorted = names.sort(order)
var sorted2 = names.sort( { (first:String, second:String) -> Bool in return first > second } )
var sorted3 = names.sort( { (first, second) -> Bool in first < second } )
var sorted4 = names.sort( { (first, second) in first < second } )
var sorted5 = names.sort( { $0 < $1 } )

print (sorted)
print (sorted2)
print (sorted5)
*/

/*
// Function Type

// (String, Int) -> () // Function with parameters -> Nothing Returns
// () -> () //Function without parameters -> Nothing Returns
// (String) -> (String) // Function with param -> return some String
// Можно объявлять переменную типа "SomeFunction". Прктически мы
// это ссылка на эту функцию, новое имя функции.
// Можно использовать в качестве параметра новой фунции, можно 
// организовывать что вроде "Dependency Injection"

func myFunc (Someshit: String, enotherShit: Int) ->String{
    return Someshit
}
var newNameFunction2: (String, Int) -> (String) = myFunc // без указания параметров
var newNameFunction  = myFunc // без указания параметров
print (newNameFunction ("Vasya", enotherShit: 0))
func useFunction (function:(String, Int) -> (String)) {
   print (function("Derec", 2))
}
useFunction(newNameFunction)

func returnFunc () ->(String,Int) ->(String){
    return myFunc
}
*/


// Function parameters

/*
    // диапазон значений для параметра (напрмер для перебора)
var sum:Int = 0
func add ( numbers: Int ... , second: Bool = true) ->Int {  // Int...  любое к-во Integers
    for var i=0; i < numbers.count; i++ {
    //for i in numbers {
        sum += i
        print(i)
    }
    
    return sum
}

var xxx = add(11,3,45,6,12)
print("Сумма: \(xxx)")

*/

// зачения по умолчанию для параметров функ
/*
func add (x: Int = 5 , y: Int = 7) ->Int{
    return x+y
}
let aa = add(y:2)
print(aa)
*/
/*  // внешние имена
func myFunction (Name name: String, _ id: Bool) {
    
}
myFunction (Name: "string3", true)
*/
/*  // Function
func sayHello (name:String, alreadyGreeted:Bool) -> (a:String, b: Int) {
    var greeting = ""
    if alreadyGreeted {
        greeting = "Hello, againe \(name)"
    } else {
        greeting = "Hello \(name)!"
    }
    return (greeting, 1)
}

let greeting = sayHello("Vasya", alreadyGreeted: false)
print(greeting.a)
*/
/*
let arguments = Process.arguments
let sentence = arguments[1]
let sep: Character = " "
var charDict = [Character: Int]()
/*
for c in sentence.characters {
    if c != sep {
        if charDict.keys.contains(c) {
            charDict[c]!++
        } else {
            charDict[c] = 1
        }
    }
}
*/
for c in sentence.characters {
    switch c {
    case "a"..."z", "A"..."Z" :
        if charDict.keys.contains(c) {
            charDict[c]!++
        } else {
            charDict[c] = 1
        }
    default :
        break;
    }
}

for (key, name) in charDict {
    print("\(key) : \(name)" )
}
*/

/*
for key in charDict.keys {
    print("\(key) : \(charDict[key]!)" )
}

*/


/*
let emp = (id: 12345, name: "Paul Tyutyunnik", some: "TEST", id2: 32)

switch emp {
    case (12300...12350, _, "TEST", 32):
        print ("\(emp.name) needs to be paid on the fist Thursday")
    case (_, _, _, _):   // or default
        print ("\(emp.name) needs to be paid on the second Thursday ")
    
}



func doSomething (val1: Int?, val2: Int?) {
    guard let number = val1 where val1 > 0 else {return // or throw some exeption }
    guard let key = val2 where val2 < 100 else { return}
    var  some = number + key
}


    // Arrays
var names3 = Array <String> ()
var names2 = [String]()
var names4:[String]
var names:[String]  = []

names = ["Pasha", "Illya", "Sereja", "Olya"]

names.append ("Petya") //Only one item
names += ["Gena", "Vasya"] //Multiple items
var aa = names.isEmpty
print(aa)
var name = names.removeAtIndex(2)
print(name)
print(names)
names.insert("FEDYA", atIndex:3)
print(names)

// set
var numbers1 = Set <Int> ()
var numbers2:Set<Int> = [1, 2, 9, 0, 1]
var numbers:Set = [1, 2, 3, 4, 1]
numbers.insert(9)
//print(numbers)

let odds:Set = [9,3,5,7,9]
print("Odds\(odds)")
let evens:Set = [2,4,6,9]
let primes:Set = [2,5,9]

var union = odds.union(evens)
var intersect = odds.intersect(evens)

print(odds.exclusiveOr(evens))
print("OK")


//Dictionary
var ages = [String: Int]()
ages["Vasya"] = 22
ages["Petya"] = 34
ages["Борис"] = 39
//ages = [:]
ages.isEmpty
print(ages.values)

// Tuple

let emp = (12345, "Pavel Tyutyunnik")

/*
let id = emp.0
let n = emp.1
*/
let (_, n) = emp

let empl = (id:1234, name_emp: "Pavel T")

print("Employee name is \(empl.name_emp) with id - \(empl.id)")

// for in ...

let number = 2
let power = 61
var answer = 1

for _ in 1...power {
    answer *= number
    
}

print("Числа \(number) в степени \(power) равна \(answer)")

    enum CalcError: ErrorType {
        case DivByZero
        case DivByOne
        case TestError
    }
    func divide(firstValue first: Int, secondValue second: Int) throws -> Double {
        if second == 0 {
            throw CalcError.DivByZero
        } else if second == 1 {
            throw CalcError.DivByOne
        }
        
        return Double(first) / Double(second)
    }
    /*
    var result2 = try divide(firstValue: 39, secondValue: 0)
    print("Result of dividing is \(result2)")
    */
    do {
        var result2 = try divide(firstValue: 39, secondValue: 3)
        print("Result of dividing is \(result2)")
    }
    catch CalcError.DivByZero{
        print ("You tryed divide by Zero")
    }
    catch CalcError.DivByOne{
        print ("You tryed divide by One")
    }
    catch {
        print ("Some shit happend")
    }
    
    */