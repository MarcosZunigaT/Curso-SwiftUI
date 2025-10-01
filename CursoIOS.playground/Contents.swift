import UIKit

var greeting = "Hello, playground"
var name = "Marcos Zuniga"
let name2 = "Julio Rodriguez"
let age = "31"

//Tipos de variables

//CHAR
var symbol: Character = "*"
var symbol2: Character = "\u{2665}"

print(name)
print(name2)
print(age)
print(symbol2)

//String

var dogName : String = "Darky"


//Int

var year : Int = 2025

//Float

var piFloat: Float = 3.142123
print(piFloat)

//Double

var piDouble: Double = 3.142113
print(piDouble)

//Bool

var isImHappy = true

//Operadores aritmeticos

var a:Int = 5
let b:Int = 10

print(a)

var sum = a + b //Suma
var substract = a - b //Resta
var multiply = a * b //Multiplicacion
var divide = a / b //Division
var module = a % b //Modulo

var example = 5

example += 10 //Suma
example -= 10 //Resta
example *= 10 //Multiplicacion
example /= 10 //Division
example %= 10 //Modulo

//Operadores logicos de comparacion

let age2 = 30

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqual = age2 == 35
let isNotEqueal = age2 != 35
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 <= 18

let isSunny:Bool = true
let temperature:Int = 25

let isPleasant:Bool = isSunny && temperature >= 25 //AND
let goToBeach:Bool = isSunny || temperature >= 25 //OR
let wearHat:Bool = !isSunny

//Conversiones
let integerNumber:Int = 34
let decimalNumber:Double = 25.65
let superNumber:Double = Double(integerNumber) + decimalNumber
let superNumber2:Int = integerNumber + Int(decimalNumber)
print(superNumber)


//Ejercicio1

let asistences = 10
let totalAsistences = 20

var porcentajeAsistences:Double = (Double(asistences) / Double(totalAsistences)) * 100

print("El resultado de asistencias es \(porcentajeAsistences)")
 

//Ejercicio2

let weight:Double = 60
let height:Double = 1.75

var IMC = weight / (height * height)

print("El resultado de indice de masa corporal es: \(IMC)")


//Ejercicio3

let originalPrice:Double = 20.65
let porcentageDiscount:Double = 20.0

var priceLessDiscount = originalPrice - (originalPrice * porcentageDiscount / 100)

print("El precio original es: C$\(originalPrice) y el precio con descuento es: C$\(priceLessDiscount)")


//Funciones

func showMyMane(){
    print("Hola es mi primera funcion")
}

func showMyCustomName (name:String){
    print("Hola \(name)")
}

func calculate(a:Int, b:Int){
    let result = a + b
    print("El resultado es \(result)")
}

func calculate2(_ a:Int, _ b:Int){
    let result = a + b
    print("El resultado es \(result)")
}

func calculate3 (a:Int, b:Int) -> Int {
    let result = a + b
    return result
}


showMyMane()
showMyCustomName(name: name)
calculate(a: a, b: b)
calculate2(2, 20)

let mySuperResult:Int = calculate3(a: 5, b: 30)
print(mySuperResult)

//IF-ELSE

let userAge = 8

if userAge >= 18 {
    print("Eres mayor de edad")
} else {
    print("Eres menor de edad")
}

func greeting(hour:Int){
    if hour < 12 {
        print("Buenos dias")
    } else if hour < 18 {
        print("Buenas tardes")
    } else {
        print("Buenas noches")
    }
}

greeting(hour: 20)

func getMounth (mount:Int){
    if mount == 1 {
        print("Enero")
    } else if mount == 2 {
        print("Febrero")
    } else if mount == 3 {
        print("Marzo")
    } else if mount == 4 {
        print("Abril")
    } else if mount == 5 {
        print("Mayo")
    } else if mount == 6 {
        print("Juni")
    } else if mount == 7 {
        print("Julio")
    } else if mount == 8 {
        print("Agosto")
    } else if mount == 9 {
        print("Septiembre")
    }else if mount == 10 {
        print("Octubre")
    }else if mount == 11 {
        print("Noviembre")
    }else if mount == 12 {
        print("Diciembre")
    } else {
        print("Numero invalido, añade otro")
    }
}

getMounth(mount: 1)

//Switch

func getMounthWithSwitch(mount:Int){
    switch mount {
    case 1:
        print("Enero")
    case 2:
        print("Febrero")
    case 3:
        print("Marzo")
    case 4:
        print("Abril")
    case 5:
        print("Mayo")
    case 6:
        print("Junio")
    case 7:
        print("Julio")
    case 8:
        print("Agosto")
    case 9:
        print("Septiembre")
    case 10:
        print("Octubre")
    case 11:
        print("Noviembre")
    case 12:
        print("Diciembre")
    default:
        print("Numero invalido, añade otro")
    }
}

getMounthWithSwitch(mount: 3)


func getTrimester(mount:Int){
    switch mount {
    case 1,2,3: print("Primer trimestre")
    case 4,5,6: print("Segundo trimestre")
    case 7,8,9: print("Tercer trimestre")
    case 10,11,12: print("Cuarto trimestre")
    default: print("Numero invalido, añade otro")
    }
}

getTrimester(mount: 2)

func getSemester(mount:Int){
    switch mount {
    case 1...6: print("Primer semestre")
    case 7...12: print("Segundo semestre")
    default: print("Numero invalido, añade otro")
    }
}


//Ejercicio 4

func calculateCircleArea (radio:Double) -> Double{
    
    return Double.pi * radio * radio
}

let circleRadio:Double = calculateCircleArea(radio: 20.11)
print("El area del circulo con radio 20.11 es \(circleRadio)")

//Ejercicio 5

func showNumberSide (number:Int){
    if number > 0 {
        print("El numero es positivo")
    } else if number == 0 {
        print("El numero es 0")
    } else {
        print("El numero es negativo")
    }
}

showNumberSide(number: 0)

//Ejercicio 6

func positiveOrNegativeSwitch(number: Int){
    switch number {
    case let x where x > 0:
        print("El numero es positivo")
    case let x where x < 0:
        print("El numero es negativo")
    default:
        print("El numero es 0")
    }
}

positiveOrNegativeSwitch(number: -10)


//Arrays

let names:[String] = ["Marcos", "Pepe", "David", "Fulanito"]
var daysOfWeek:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
print(names[0])
print(daysOfWeek[3])
daysOfWeek[3] = "Juernes"
print(daysOfWeek[3])

print(daysOfWeek[0])
daysOfWeek.remove(at: 0)
print(daysOfWeek[0])

daysOfWeek.append("MarcosDevs")
print(daysOfWeek)

//Bucles
var daysOfWeek2:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

for day in daysOfWeek2 {
    if day == "Jueves" {
        print("Esta el \(day) en el listado")
    }
}


var count = 1

while count <= 10 {
    print("Hola soy un contador y valgo \(count)")
    count += 1
}


var count2 = 5

repeat{
    print("PEPE")
} while count2 < 0

for day in daysOfWeek2 {
    if day == "Jueves" {
        print("Esta el \(day) en el listado")
        break
    } else {
        print("No Jueves")
    }
}

for day in daysOfWeek2 {
    print("-------------")
    if day == "Jueves" {
        print("Esta el \(day) en el listado")
        continue
    }
    print("XXXXXXXXXXXXX")
}

//Ejercicio 7

func showMultiplicationTableForNumber (number:Int) {
    print("Tabla de multiplicar del 1 al 10")
    for multiplicator in 1...10 {
        print("\(number) x \(multiplicator) es igual a: \(number * multiplicator)")
    }
}

showMultiplicationTableForNumber(number: 2)


//Ejercicio 8

func sumParNumbers(){
    var sum = 0
    for number in 1...100 {
        if number % 2 == 0 {
            sum += number
        }
    }
    print("La suma total es de: \(sum)")
}

sumParNumbers()

func sumParNumbersInverted(){
    var sum = 0
    for number in 1...100 {
        if number % 2 != 0 {
            continue
        }
        sum += number
    }
    print("La suma total es de: \(sum)")
}

sumParNumbersInverted()

//Ejercicio 9

func countVocalInString(text:String){
    var vocalCounter = 0
    for character in text {
        switch character.lowercased() {
        case "a", "e", "i", "o", "u":
            vocalCounter += 1
        default:
            continue
        }
    }
    print("El numero de vocales para \(text) es de \(vocalCounter)")
}

countVocalInString(text: "Aris")

//Tuplas

var tupla = ("Marcos",31,true,"Calle mi casa", 55555555, 1.87)

print(tupla.4)

//Diccionarios

var dicc:[String: Any] = ["name":"Marcos", "age":31, "imHappy":true, "address": "Calle mi casa"]
var myDiccName:String = dicc["name"] as? String ?? "Pepito"
print(myDiccName)

for (key, value) in dicc{
    print("La clave \(key) contiene \(value)")
}

//Nullabilidad

var stringNotNil:String = "Loquesea"
var stringNil:String?

print(stringNotNil)
print(stringNil)

func ejemploNil(text:String){
    
}

ejemploNil(text: stringNotNil)
ejemploNil(text: stringNil ?? "Ejemplo")
//ejemploNil(text: stringNil!)

func ejemploNil2(text:String?){
    if let example = text {
        print(example)
    } else {
        print("Introduce un nombre para continuar")
    }
    
    guard let example2 = text else {
        return
    }
    
    print("Hola \(example2)")
}

ejemploNil2(text: stringNotNil)
ejemploNil2(text: stringNil)

//Clases

class Persona {
    
    var name:String
    var age:Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    
    func greetings(){
        print("Hola soy \(name) y tengo \(age) años.")
    }
}

var marcos:Persona = Persona(name: "Marcos Zuniga", age: 31)
var pepe:Persona = Persona(name: "Pepe", age: 86)

marcos.greetings()
pepe.greetings()


//Structs

struct ExampleStruct {
    var name:String
    var age:Int
}

var exampleStruct:ExampleStruct = ExampleStruct(name: "Roberto Perez", age: 25)
var exampleStruct2:ExampleStruct = ExampleStruct(name: "Tauron Tellez", age: 8)

exampleStruct.name
exampleStruct2.age
