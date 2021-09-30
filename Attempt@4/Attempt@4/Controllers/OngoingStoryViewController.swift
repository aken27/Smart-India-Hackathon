//
//  OngoingStoryViewController.swift
//  Attempt@4
//
//  Created by Shivansh Khera on 01/02/20.
//  Copyright © 2020 Sejal Somani. All rights reserved.
//

import UIKit

class OngoingStoryViewController: UIViewController {

    
    @IBOutlet weak var storyImage: UIImageView!
    
    
    @IBOutlet weak var choice1: UIButton!
    
    
    @IBOutlet weak var choice2: UIButton!
    
    @IBOutlet weak var situationLabel: UILabel!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()

    }
    
    


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        storyImage.image = storyBrain.getBackroundImage()
        choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        
        choice2.setTitle(storyBrain.getChoice2(), for: .normal)
        
        situationLabel.text = storyBrain.getSituationtitle()
        
        
    }
}
