//
//  NoticiasVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit


class NoticiasVC: UITableViewController {
    
    var noticias:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset
    
        LeerNoticias().getNoticias { (datos) in
            self.tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.noticias.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath as IndexPath)
        
        celda.textLabel!.text = self.noticias[indexPath.row]
        
        return celda
        
    }
    
    
}
