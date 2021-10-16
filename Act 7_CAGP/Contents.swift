import UIKit

var costo_referencia:[Float] = [8.3, 10.5, 9.9]
var impuesto:Int = 0

for a in costo_referencia{
    costo_referencia[impuesto] = a * 0.16 + a
    impuesto += 1
}

costo_referencia

let Suma = {(x:Int, y:Int) -> Int in return x + y}

Suma(2, 2)

func SumaTres(a:Int, b:Int, c:Int) -> Int{
    return Suma(a,b) + c
}

SumaTres(a:2, b:2, c:2)

func CambioInt(a:Int, b:Int) -> (Int, Int){
    let temp = a
    let a = b
    let b = temp
    return (a,b)
}

func CambioString(a:String, b:String) ->(String, String){
    let temp = a
    let a = b
    let b = temp
    return (a,b)
}

var datos = [3, 7, 9, 2]
var otros = ["a", "e", "i", "o", "u"]
extension Array{
    func SAcumulada<T> (inicial:T, acumula:(T, Element) -> T) -> T{
        var respuesta:T = inicial
        for valor in self{
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

datos.SAcumulada(inicial:0) {(a,b) in a + b}
otros.SAcumulada(inicial: "") {a,b in a + b}

let datos2 = [4.2, 5.3, 8.2, 4.5]

var impuestot = datos.map{_ -> Double in 1; return 1 * 0.16}
impuesto += 1
impuestot

let datos3 = [4.2, 5.3, 8.2, 4.5]
var filtro = datos.filter{a in a > 6}
filtro
