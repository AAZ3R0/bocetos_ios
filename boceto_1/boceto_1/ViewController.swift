//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labalcito: UILabel!
    
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Zombie", que_dijo: "BRUHHHH")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()

    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        actualizar_cantidad()
        // Do any additional setup after loading the view.

    }
    
    func actualizar_cantidad(){
        labalcito.text = String(citas_disponibles.citas_creadas.count)
    }


    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    
    @IBAction func al_pulsar_boton(_ sender: UIButton){
        
    }
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue){
        if let pantalla_agregar_citas = segue.source as? ControladorPantallaAgregarCita{
            citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
        }
        
        actualizar_cantidad()
    }
}


