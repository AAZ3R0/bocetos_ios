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
    
    
    
    @IBOutlet weak var que_dijo_view: UITextField!
    
    @IBOutlet weak var quien_dijo_view: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func agregar_cita(_ sender: UIButton) {
        cita_creada = Cita(quien_lo_dijo: quien_dijo_view.text!, que_dijo: que_dijo_view.text!)
    }
    
}
