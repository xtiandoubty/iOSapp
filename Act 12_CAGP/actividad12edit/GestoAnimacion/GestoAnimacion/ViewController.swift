//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by alicharlie on 11/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipoGesto: UILabel!
    
    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
    }) { _ in
        self.tipoGesto.alpha = 0.0
        }
    }
    
    
    func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of:UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
            }
        animacion()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
    }

    
    func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

    
    
    

}

