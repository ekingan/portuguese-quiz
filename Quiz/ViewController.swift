//
//  ViewController.swift
//  Quiz
//
//  Created by Math LLC on 6/5/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["Zapatão",
                                "Suco de laranja",
                                "Salto Altos",
                                "Assustador",
                                "um Carro",
                                "muito caro!"
                                ]
    
    let answers: [String] = ["Lesbian",
                            "Orange Juice",
                            "High Heals",
                            "Scary!",
                            "a car",
                            "very expensive!"
                            ]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

