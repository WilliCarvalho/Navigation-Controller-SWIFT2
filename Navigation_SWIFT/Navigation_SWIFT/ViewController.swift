//
//  ViewController.swift
//  Navigation_SWIFT
//
//  Created by perfil on 23/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var seuJogo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Abrir(_ sender: Any) {
        performSegue(withIdentifier: "Tela1PraTelaNova", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let texto = segue.destination as! UINavigationController
        let game = texto.topViewController as! RecebeViewController
        game.message = seuJogo.text!
        }
    }
    

