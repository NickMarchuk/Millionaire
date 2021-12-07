//
//  Questions.swift
//  Millionaire
//
//  Created by Nick on 12.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import Foundation

struct Questions {
    
    let question:String
    let answerA:[String]
    let answerB:[String]
    let answerC:[String]
    let answerD:[String]
    
    init(question: String, answerA:[String], answerB:[String], answerC:[String], answerD:[String]) {
        self.question = question
        self.answerA = answerA
        self.answerB = answerB
        self.answerC = answerC
        self.answerD = answerD
    }
}
