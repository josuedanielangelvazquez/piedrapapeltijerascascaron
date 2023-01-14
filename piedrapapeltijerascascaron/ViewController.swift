//
//  ViewController.swift
//  piedrapapeltijerascascaron
//
//  Created by MacBookMBA6 on 13/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var PiedraPc: UIButton!
    @IBOutlet weak var PapelPc: UIButton!
    @IBOutlet weak var TijerasPc: UIButton!
    
 
    @IBOutlet weak var PiedraJugador: UIButton!
    @IBOutlet weak var TijerasJugador: UIButton!
    @IBOutlet weak var PapelJugador: UIButton!
    
    var piedrapc = 0
    var papelpc = 1
    var tijeraspc = 2
    var Pc = 0
    var computadora = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
        // Do any additional setup after loading the view.
    }

    @IBAction func Action(_ sender: UIButton) {
        let alert = UIAlertController(title: "Ganador", message: "Surgio un Empate", preferredStyle: .alert)
        let Ok = UIAlertAction(title: "oK", style: .default)
                       alert.addAction(Ok)
        
        let alertPc = UIAlertController(title: "Ganador", message: "El Ganador es el Jugador 1", preferredStyle: .alert)
        alertPc.addAction(Ok)
        
        let alertJugador = UIAlertController(title: "Ganador", message: "El Ganador es la pc", preferredStyle: .alert)
        alertJugador.addAction(Ok)

        Pc = Int(arc4random_uniform(3))
       var button = String(sender.restorationIdentifier!)
        print(Pc)
        switch button{
            
        case "PiedraJugador":
            PiedraJugador.backgroundColor = .white
            if Pc == piedrapc{
                PiedraPc.backgroundColor = .white
                self.present(alert, animated: true)
            }
            if Pc == papelpc{
                self.present(alertJugador, animated: true)
                PapelPc.backgroundColor = .white
            }
            if Pc == tijeraspc{
                self.present(alertPc, animated: true)
                PapelPc.backgroundColor = .white
            }
        default:
            print("termino")
            
        }
    }
    
}

