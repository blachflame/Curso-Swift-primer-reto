/*
 Autor: jose Estevez
 Curso: Swift - Semana 2
 Fecha: 3/04/2016
 */
import UIKit

//: Constante rango.
let rango = 1...100
//: Constante con el valor  divisible
let divisible = 5
//: regla #4
let regla4 = 30...40
//: marca para poder identificar cuando se aplica la regla #4
var contiene = false

//: Ciclo for para recorrer el rango de numeros del 1 al 100
for numero in rango {
  
    //: Condicion para detectar si el numero esta dentro de la regla #4
 if (regla4.contains(numero)){
        contiene = true        
    } else {
        contiene = false
    }
    
    //: switch para determinar si se cumplen alguna de las 4 reglas
    switch numero {
    case let numero where numero % divisible == 0:
        if (contiene){
            print("# \(numero) Viva Swift!!!")
        }
        print ("# \(numero) Bingo!!!")
    case let numero where numero % 2 == 0:
        if (contiene){
            print("# \(numero) Viva Swift!!!")
        }

        print ("# \(numero) par!!!")
    case let numero where numero % 2 != 0:
        if (contiene){
            print("# \(numero) Viva Swift!!!")
        }

        print ("# \(numero) impar!!!")
    default:
        print("Sin regla asociada")
        
    }
    
}