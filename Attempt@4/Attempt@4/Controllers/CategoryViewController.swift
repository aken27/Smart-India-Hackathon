//
//  CategoryViewController.swift
//  Attempt@4
//
//  Created by Sejal Somani on 01/02/20.
//  Copyright © 2020 Sejal Somani. All rights reserved.
//

import UIKit

class CategoryViewController: UITableViewController {

    let category = Category()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.titleArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = category.titleArray[indexPath.row]
        
        return cell
    }
}
