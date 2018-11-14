//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Daryl Zandvliet on 13/11/2018.
//  Copyright © 2018 Daryl Zandvliet. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", whale = "🐋", panda = "🐼"

var definition: String {
    switch self {
    case .dog:
        return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
    case .cat:
        return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."

    case .whale:
        return "You enjoy being in the water and exploring the world with companions"
        
    case .panda:
        return "You are a real vegan and being lazy and cuddling describes your daily activities"
}

}
}
