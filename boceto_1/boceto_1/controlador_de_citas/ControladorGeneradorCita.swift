//
//  ControladorGeneradorCita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorPantallaAgregarCita: UIViewController{
    
    var quien_lo_dice: String = ""
    var que_dice: String = ""
    var cita_creada: Cita? = nil

    
    
    @IBOutlet weak var que_dijo: UITextField!
    
    @IBOutlet weak var quien_lo_dijo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func crear_cita(_ sender: UIButton) {
        cita_creada = Cita(quien_lo_dijo: quien_lo_dijo.text!, que_dijo: que_dijo.text!)
    }
    
    
}
