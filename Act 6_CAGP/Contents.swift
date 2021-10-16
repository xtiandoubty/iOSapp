import UIKit

infix operator +++

func +++(valor :Int, valor2:Int) -> Double{
    let base = Double(valor)
    let potencia = Double(valor2)

    return pow(base, potencia)
}
2 +++ 3

var coleccion1 = [2,5,3,4]
prefix operator |>
prefix func |>(coleccion:Array<Int>) -> Array<Int>{
    return coleccion.sorted()
}
|>coleccion1

class Cantidad{
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    subscript(index: Int) -> Int {
        get{
            return valores[index]
        }
        set(newValue){
            valores[index] = valores[index] * newValue
        }
    }
}
let v1 = Cantidad(v: coleccion1)

v1[3]
v1[2]=3
coleccion1
v1.valores

/*
struct Posicion{
    subscript(index:Int) -> CGPoint{
        get{
            return self.posicion
        }
        set(newValue){
            self.posicion = newValue
        }
    }
 }
var pos = Posicion(p: CGPoint(x: 1.0, y:0.0))
pos.posicion
pos.posicion = CGPoint (x: 2.0, y: 2.0)
pos.posicion
 */

var coleccion2 = ["A":1, "B":2, "C":3]

func ExisteValor(valorABuscar:String){
    guard let existe = coleccion2[valorABuscar] else {
        print("NO EXISTE")
        return
    }
    print("existe \(existe)")
}
ExisteValor(valorABuscar: "A")
coleccion2["D"]
