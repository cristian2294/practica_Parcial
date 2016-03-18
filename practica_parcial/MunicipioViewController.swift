//
//  MunicipioViewController.swift
//  practica_parcial
//
//  Created by centro docente de computos on 18/03/16.
//  Copyright © 2016 Udem. All rights reserved.
//

import UIKit

class MunicipioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var municipios = [Municipio]()
    let cellIdentifier = "cellMunicipios"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        municipios = Municipio.municipios()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        let municipio = municipios[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        cell?.textLabel?.text = municipio.name
        return cell!
    
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return municipios.count
    }
    

}
