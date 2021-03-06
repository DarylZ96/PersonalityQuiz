//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Daryl Zandvliet on 13/11/2018.
//  Copyright © 2018 Daryl Zandvliet. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefinition: UILabel!
    
    
    var responses: [Answer]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    // calculate the results by using the frequency of the answers
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType:Int] = [:]
        
        let responseTypes = responses.map { $0.type}
        
        for response in responseTypes {
        frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) -> Bool in
        return pair1.value > pair2.value
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1}.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinition.text = mostCommonAnswer.definition

    }

}

