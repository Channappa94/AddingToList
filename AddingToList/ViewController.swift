//
//  ViewController.swift
//  AddingToList
//
//  Created by IMCS2 on 7/25/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit
var str = " "
class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        textField.text = str
        secondTableViewController().insertNewContacts()
        
        
    }
    

}

