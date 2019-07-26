//
//  secondTableViewController.swift
//  AddingToList
//
//  Created by IMCS2 on 7/25/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class secondTableViewController: UITableViewController {
    var list = [" "]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    func insertNewContacts(){
        
        //To array add the textField
        //list can only be updated if we have can connect the text field with list
        list.append(str)
        //Where to put that in the table view
        //IndexPath is bascially row in the column
        let indexPath = IndexPath(row: list.count - 1 , section: 0)
        //update the tableView
        tableView.beginUpdates()
        
        tableView.insertRows(at: [indexPath], with: .automatic)
        
        tableView.endUpdates()
        
        str = ""
        
        view.endEditing(true)
    }
    
    
    
}
