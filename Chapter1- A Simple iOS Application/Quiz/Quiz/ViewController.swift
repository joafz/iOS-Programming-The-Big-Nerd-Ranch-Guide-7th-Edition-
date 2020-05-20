//
//  ViewController.swift
//  Quiz
//
//  Created by J A on 2020-04-26.
//  Copyright © 2020 JAFZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //load the first question from the array to replace "???"
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
    "What is 7 + 7",
    "What is the capital of wermont?",
    "What is gognac made from?"
    ]
    let answers: [String] = [
    "14",
    "Montpelier",
    "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_sender:UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question:String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"

}
    @IBAction func showAnswer(_sender:UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}
