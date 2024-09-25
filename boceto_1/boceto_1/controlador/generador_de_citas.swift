//
//  generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

class GeneradorDeCitas{
    
    var citas_creadas: Array<Cita>
    
    init(){
        citas_creadas = []
    }
    
    func agregar_cita(que_dijo: String, quien_lo_dijo: String){
        var cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func generar_citas_falsas(){
        self.agregar_cita(que_dijo: "Por farmacia", quien_lo_dijo: "Tu tío")
        self.agregar_cita(que_dijo: "Diría que me voy, pero\n la verdad es que desviví", quien_lo_dijo: "Pauter")
        self.agregar_cita(que_dijo: "Bruhhhhh", quien_lo_dijo: "Zombie")
        self.agregar_cita(que_dijo: "Urghh", quien_lo_dijo: "Enderman")
    }
    
    func obtener_cita_aleatoria()->Cita{
        var cita_para_regresar: Cita
        cita_para_regresar = citas_creadas[Int.random(in: 0...citas_creadas.count-1)]
        
        return cita_para_regresar
    }
}


