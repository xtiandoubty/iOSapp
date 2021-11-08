//
//  SecondViewController.swift
//  NewAppHaras
//
//  Created by user190613 on 11/7/21.
//  Copyright © 2021 user190613. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imageChange: UIImageView!
    
    @IBAction func botonSecondVC(_ sender: Any) {
        
        let randomImage = Int.random(in: 1...5)
        
        imageChange.image = UIImage(named: "act\(randomImage)")
        
    }
    
    
}
