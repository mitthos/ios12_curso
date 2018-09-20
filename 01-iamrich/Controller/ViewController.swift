//
//  ViewController.swift
//  01-iamrich
//
//  Created by Daniel Perez on 18-09-18.
//  Copyright © 2018 Daniel Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //PROPERTIES

    @IBOutlet weak var labelTitle: UILabel!

    @IBOutlet weak var imageViewDiamond: UIImageView!

    @IBOutlet weak var buttonPush: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
//METHODS
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //self.labelTitle.text = "He pulsado el botón"
        //self.labelTitle.textColor = UIColor.blue
        //self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
        //self.imageViewDiamond.image = UIImage(named: "ruby-image")
          
        let controller = UIAlertController(title: "I am Rich", message: """
                                                    I am Rich
                                                    I deserve it
                                                    i am good
                                                    healty and successful
                                                    """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He presionado el botón Aceptar")
        }
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He presionado el botón Borrar")
        })
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel){ _ in
            print("He presionado el botón Cancelar")
        }

        controller.addAction(action)
        controller.addAction(action2)
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
        
    }
    
    
}

