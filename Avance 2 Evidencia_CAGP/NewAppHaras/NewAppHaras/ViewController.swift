//
//  ViewController.swift
//  NewAppHaras
//
//  Created by user190613 on 11/7/21.
//  Copyright © 2021 user190613. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unicoBoton(_ sender: Any) {
        
        //print("El boton ha sido presionado")
        let vc = storyboard?.instantiateViewController(identifier: "second_vc") as! SecondViewController
            present(vc, animated: true)
        
    }
    
}
