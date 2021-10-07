import UIKit
/*
var Datos:Array<Int> = Array<Int>()
Datos.append(3)
Datos.append(6)
Datos.append(9)
Datos.append(2)
Datos.append(4)
Datos.append(1)
var limit = 5
var resultado: [Int] = []

for numero in Datos{
    if numero < limit{
        resultado.append(numero)
    }
print(resultado)
*/
func suma (a:Int, b:Int) -> Int{
    return a + b
 }
suma(a: 9, b: 2)

func potencia (c:Int, d:Int) -> Int{
    let x: Int = Int(pow(Double(c),Double(d)))
    return x
}
potencia(c: 2, d: 5)

enum meses{
    case enero
    case febrero
    case marzo
    case abril
    case mayo
    case junio
    case julio
    case agosto
    case septiembre
    case octubre
    case noviembre
    case diciembre
}

var queMesEs:meses
queMesEs = .octubre

switch queMesEs{
    case .enero:
        print("Es el mes 1")
    case .febrero:
        print("Es el mes 2")
    case .marzo:
        print("Es el mes 3")
    case .abril:
        print("Es el mes 4")
    case .mayo:
        print("Es el mes 5")
    case .junio:
        print("Es el mes 6")
    case .julio:
        print("Es el mes 7")
    case .agosto:
        print("Es el mes 8")
    case .septiembre:
        print("Es el mes 9")
    case .octubre:
        print("Es el mes 10")
    case .noviembre:
        print("Es el mes 11")
    case .diciembre:
        print("Es el mes 12")
    }


