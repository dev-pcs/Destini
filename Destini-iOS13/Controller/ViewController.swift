//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!             //
    @IBOutlet weak var choice1Button: UIButton!         //for controlling UI elements
    @IBOutlet weak var choice2Button: UIButton!         //
                
    var storyBrain = StoryBrain()                       //get the storybrain structure from storybrain.swift to use all functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()                                      //update ui function
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {     //buttons
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)      //
        
        updateUI()
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    
    
    
}

