//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {             //structure ofr handling story tracking, data, getting story title, choice1 choice 2 and next story
    
    var storyNumber = 0         //keep track of what story is user on
    
    let stories = [
        Story(                  //using story struct in story.swift
            title: "you find a fork on the road",
            choice1: "take a left", choice1Destination: 2,
            choice2: "Take a right.", choice2Destination: 1
        ),
        Story(
            title: "you find a bear.",
            choice1: "kill it ", choice1Destination: 2,
            choice2: "make him a friend", choice2Destination: 3
        ),
        Story(
            title: "you find a snake",
            choice1: "eat it.", choice1Destination: 5,
            choice2: "feed", choice2Destination: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {            //getting title function
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1     //getting choice function
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2     //getting choice 2 function
    }
    
    mutating func nextStory(userChoice: String) {       //for displaying next story based on user's choices
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        }else {
            storyNumber = currentStory.choice2Destination
        }
    }
}

