//
//  MillionareBrain.swift
//  Millionaire
//
//  Created by Nick on 16.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import Foundation

struct MillionareBrain {
    
    let questionsAndAnswers = [
        Questions(question: "What kind of game is familiar to the kindergarten child?", answerA: ["A: The sea is worried once","True"], answerB: ["B: Ocean rages two", "False"], answerC: ["С: River is noise Three", "False"], answerD: ["D: Lake Stormat", "False"]),
        Questions(question: "What is the name of the species of the shoe?", answerA: ["A: vest", "False"], answerB: ["B: comfort", "False"], answerC: ["С: Praying", "True"], answerD: ["D: hugging", "False"]),
        Questions(question: "What confirms the compliance of products to the established requirements and standards?", answerA: ["A: certificate", "True"], answerB: ["B: packing list", "False"], answerC: ["С: barcode", "False"], answerD: ["D: sales receipt", "False"]),
        Questions(question: "Who has the normal body temperature - 42 degrees?", answerA: ["A: in elephant", "False"], answerB: ["B: in camel", "False"], answerC: ["С: in whale", "False"], answerD: ["D: in duck", "True"]),
    ]
    
    var numberOfQuestion = 0
    
    var score = 0
        
    func checkAnswer(tag: Int) -> Bool{
        
        let answers = questionsAndAnswers[numberOfQuestion]
        
        if tag == 0 && answers.answerA[1] == "True"{
            return true
        }else if tag == 1 && answers.answerB[1] == "True"{
            return true
        }else if tag == 2 && answers.answerC[1] == "True"{
            return true
        }else if tag == 3 && answers.answerD[1] == "True"{
            return true
        }else{
            return false
        }
    }
    
    func getQuestion() -> String{
        return questionsAndAnswers[numberOfQuestion].question
    }
    
    func getAnswerA() -> String{
        return questionsAndAnswers[numberOfQuestion].answerA[0]
    }
    func getAnswerB() -> String{
        return questionsAndAnswers[numberOfQuestion].answerB[0]
    }
    func getAnswerC() -> String{
        return questionsAndAnswers[numberOfQuestion].answerC[0]
    }
    func getAnswerD() -> String{
        return questionsAndAnswers[numberOfQuestion].answerD[0]
    }
    
    func getProgressStatus() -> Float{
        return Float(numberOfQuestion + 1) / Float(questionsAndAnswers.count)
    }
    
    mutating func nextQuestion(){
        if numberOfQuestion < questionsAndAnswers.count - 1{
            numberOfQuestion += 1
        }else{
            numberOfQuestion = 0
        }
    }

    mutating func countingScore(isTrue:Bool) -> String {
        if isTrue{
            score += 1
           return "Score: \(score)"
        }else{
            return "Score: \(score)"
        }
    }
    
    mutating func startScore() -> String{
        if numberOfQuestion == 0{
            score = 0
            return "Score: \(score)"
        }else{
            return "Score: \(score)"
        }
    }


}
