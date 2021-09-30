//
//  StoryViewController.swift
//  Attempt@4
//
//  Created by Sejal Somani on 01/02/20.
//  Copyright © 2020 Sejal Somani. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

   
    
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        descLabel.text = "Seema, a mother of two daughters, is pregnent with a girl child. But due to unavoidable family circumstances she is forced to abort her child. So she goes to a hospital and..."
    }

    @IBAction func playPressed(_ sender: UIBarButtonItem) {
    }
}
