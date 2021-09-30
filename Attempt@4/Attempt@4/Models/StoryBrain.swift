//
//  StoryBrain.swift
//  Attempt@4
//
//  Created by Shivansh Khera on 01/02/20.
//  Copyright © 2020 Sejal Somani. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain {
    var storyNumber = 0
    var imageNumber = 0
    
     let imageArray = [#imageLiteral(resourceName: "1-2"),#imageLiteral(resourceName: "2.jpg"),#imageLiteral(resourceName: "3.jpg"),#imageLiteral(resourceName: "4.jpg"),#imageLiteral(resourceName: "5.jpg"),#imageLiteral(resourceName: "6.jpg"),#imageLiteral(resourceName: "7.jpg")]
    
    
    let stories = [
        StoryDecription(
            choice1:"Go back home" , choice1Destinaton: 2, choice2: "Go For Abortion", choice2Destination: 1,situationLabel:"Hello Doctor, I am here to abort my baby girl child because of my unsupportive family"
        ),
        
        StoryDecription(
            choice1:"Doctor app. abortion" , choice1Destinaton: 4, choice2: "Doctor denies", choice2Destination: 3, situationLabel: "I am sure you're aware of the consequences!!!"
        ),
        StoryDecription(
            choice1:"Save the marriage", choice1Destinaton: 4, choice2: "Save the girl", choice2Destination: 5,situationLabel: "Seema's husband forces her to choose between her marraige and her baby girl."
        ),
        StoryDecription(
            choice1: "Doc agrees abortion", choice1Destinaton: 4, choice2: "Save the girl", choice2Destination: 5, situationLabel: "Doctor denies but Seema threatens the doctor that there are various hospitals."
        ),
        StoryDecription(
            choice1: "The", choice1Destinaton: 6, choice2: "End", choice2Destination: 6,situationLabel: "She looses her beautiful angel because of her wrong decision"
        ),
        StoryDecription(
            choice1: "Save Girl Child ", choice1Destinaton: 6, choice2: "Let Girls Live", choice2Destination: 6,situationLabel: "Seema sacrifices her marraige to save her daughter's life!"
        ),
        StoryDecription(
            choice1: "Start", choice1Destinaton: 0, choice2: "Again", choice2Destination: 0, situationLabel: "Not only boys are face of family,girls can also be the crown of the family"
        )
    ]
    
    
    func getBackroundImage() -> UIImage{
        return imageArray[storyNumber]
    }
    
    func getChoice1() -> String{
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String{
        return stories[storyNumber].choice2
    }
    
    func getSituationtitle() -> String{
        return stories[storyNumber].situationLabel
    }
    
    
    mutating func nextStory(userChoice:String){
        let currentStory = stories[storyNumber]
        _ = imageArray[imageNumber]
        if userChoice == currentStory.choice1{
            storyNumber = currentStory.choice1Destinaton
            imageNumber = currentStory.choice1Destinaton
            
        }else if userChoice == currentStory.choice2{
            storyNumber = currentStory.choice2Destination
            imageNumber = currentStory.choice2Destination
        }
        
    }
}
