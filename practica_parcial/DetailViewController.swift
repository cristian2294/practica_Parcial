//
//  DetailViewController.swift
//  practica_parcial
//
//  Created by centro docente de computos on 18/03/16.
//  Copyright © 2016 Udem. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    //properties
    var municipio = Municipio()
    
    
    //IBOutlet
    @IBOutlet weak var btnOutlet: UIButton!
    @IBOutlet weak var txtOutlet: UITextField!
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    //Actions
    @IBAction func btnAction(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelOutlet.text = municipio.name
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

}
