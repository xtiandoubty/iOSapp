import UIKit
/*
 class Persona{
    var nombre = ""
    var pasos = 0

    func Saludar() -> String{
        return "Hola, \(nombre) , mucho gusto."
    }

    func Caminar() -> String{
        return "He caminado \(pasos) pasos."
    }
 }

var algunaPersona = Persona()

algunaPersona.nombre = "Christian"
algunaPersona.pasos = 41
algunaPersona.Saludar()
algunaPersona.Caminar()
*/

struct Pantalla{
    var alto:Int
    var ancho:Int

    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
    
    func tamañoPantalla() -> (Int, Int){
        return (self.alto, self.ancho)
    }
}

var hd = Pantalla(alto:1024, ancho:768)
var vga = Pantalla(alto:480, ancho:640)

hd.tamañoPantalla()
vga.tamañoPantalla()

/*
extension Int{
    var horas:Int{
        return self*24*60
    }
 }

5.horas

var dias:Array<String> = Array<String>()
dias.append("domingo")
dias.append("lunes")
dias.append("martes")
dias.append("miercoles")
dias.append("jueves")
dias.append("viernes")
dias.append("sabado")
var diasNew: [String] = []

extension String{
    var contador:String{return self}
    
    func numeroDia() -> String{
            if contador == "domingo"{
                print("Dia numero 1")
            }else if(contador == "lunes"){
                print("Dia numero 2")
            }
            return numeroDia()
        }
    }
 }
 */
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = dias["DF"]
existe = dias["MTY"]

if let temp = dias["DF"]{
    print("Sí existe")
}else{
    print("No existe")
}

if let temp = dias["MTY"]{
    print("Sí existe")
}else{
    print("No existe")
}
