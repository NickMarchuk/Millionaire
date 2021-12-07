//
//  ViewController.swift
//  Millionaire
//
//  Created by Nick on 09.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var questionIMG: UIImageView!
    @IBOutlet weak var answerImgAnswerA: UIImageView!
    @IBOutlet weak var answerImgAnswerB: UIImageView!
    @IBOutlet weak var answerImgAnswerC: UIImageView!
    @IBOutlet weak var answerImgAnswerD: UIImageView!
    
    @IBOutlet weak var outputTextQuestion: UILabel!
    @IBOutlet weak var outputTextAnswerA: UILabel!
    @IBOutlet weak var outputTextAnswerB: UILabel!
    @IBOutlet weak var outputTextAnswerC: UILabel!
    @IBOutlet weak var outputTextAnswerD: UILabel!
    
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    
    let questionsAndAnswers = [
        Questions(question: "Какая игра хорошо знакома детсадовскому ребёнку?", answerA: ["A: Море волнуется раз","True"], answerB: ["B: Океан бушует два", "False"], answerC: ["С: Речка бурлит три", "False"], answerD: ["D: Озеро штормит четыре", "False"]),
        Questions(question: "Как называется разновидность дудочки?", answerA: ["A: жилетка", "False"], answerB: ["B: утешайка", "False"], answerC: ["С: жалейка", "True"], answerD: ["D: обнимайка", "False"]),
        Questions(question: "Что подтверждает соответствие продукции установленным требованиям и нормам?", answerA: ["A: сертификат", "True"], answerB: ["B: товарная накладная", "False"], answerC: ["С: штрихкод", "False"], answerD: ["D: товарный чек", "False"]),
        Questions(question: "У кого нормальная температура тела - 42 градуса?", answerA: ["A: у слона", "False"], answerB: ["B: у верблюда", "False"], answerC: ["С: у кита", "False"], answerD: ["D: у утки", "True"])
    ]
    
    var numberOfQuestion = 0
    
    
// MARK: - OLD
    
//    let question = ["Какая игра хорошо знакома детсадовскому ребёнку?",
//                    "Как называется разновидность дудочки?",
//                    "Что подтверждает соответствие продукции установленным требованиям и нормам?",
//                    "У кого нормальная температура тела - 42 градуса?"]
    
//    let answer = [
//        [
//            ["A: Море волнуется раз", "True"],
//            ["B: Океан бушует два", "False"],
//            ["С: Речка бурлит три", "False"],
//            ["D: Озеро штормит четыре", "False"]
//        ],
//        [
//            ["A: жилетка", "False"],
//            ["B: утешайка", "False"],
//            ["С: жалейка", "True"],
//            ["D: обнимайка", "False"],
//        ],
//        [
//            ["A: сертификат", "True"],
//            ["B: товарная накладная", "False"],
//            ["С: штрихкод", "False"],
//            ["D: товарный чек", "False"],
//        ],
//        [
//            ["A: у слона", "False"],
//            ["B: у верблюда", "False"],
//            ["С: у кита", "False"],
//            ["D: у утки", "True"],
//        ]
//    ]

//    var questionNumber = 0
//    var timer = Timer()
//    var isPressed = false
// MARK: - END OLD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
// MARK: - OLD
//        setLabels()
// MARK: - END OLD
    }
    
    @IBAction func pressedQuestion(_ sender: UIButton) {
        
        if sender.tag == 1{

            if numberOfQuestion < questionsAndAnswers.count - 1{
                numberOfQuestion += 1
                outputTextQuestion.text = questionsAndAnswers[numberOfQuestion].question
            }else{
                numberOfQuestion = 0
            }
        }else{
            
        }
        
        
        
        
// MARK: - OLD
//        if sender.tag == 1{
//            showButtons()
//            if isPressed {
//                if questionNumber < question.count - 1{
//                    questionNumber += 1
//                    progressBar.progress = Float(questionNumber + 1) / Float(question.count)
//                }else{
//                    questionNumber = 0
//                    progressBar.progress = Float(questionNumber + 1) / Float(question.count)
//                }
//                setLabels()
//                isPressed = false
//            }else{
//                outputTextQuestion.text = "Вы не выбрали ответ!"
//            }
//        }else{
//            rigthAnswer(tag: sender.tag - 2)

//            newRightAnswer(tag: sender.tag - 2, isChecked: answer[questionNumber][sender.tag - 2][1] == "True")

            
//            isPressed = true
//        }
// MARK: - END OLD
    }

    
        
// MARK: - OLD
//    func setLabels(){
//        outputTextQuestion.text = question[questionNumber]
//        outputTextAnswerA.text = answer[questionNumber][0][0]
//        outputTextAnswerB.text = answer[questionNumber][1][0]
//        outputTextAnswerC.text = answer[questionNumber][2][0]
//        outputTextAnswerD.text = answer[questionNumber][3][0]
//        answerImgAnswerA.image = UIImage(named: "answerL")
//        answerImgAnswerB.image = UIImage(named: "answerR")
//        answerImgAnswerC.image = UIImage(named: "answerL")
//        answerImgAnswerD.image = UIImage(named: "answerR")
//        progressBar.progress = Float(questionNumber + 1) / Float(question.count)
//    }
// MARK: - END OLD
    
// MARK: - OLD - OLD
//    func rigthAnswer(tag: Int){
        
        //        if tag == 0 && answer[questionNumber][tag][1] == "True"{
        //            answerImgAnswerA.image = UIImage(named: "correctL")
        //        }else if tag == 0 && answer[questionNumber][tag][1] == "False"{
        //            answerImgAnswerA.image = UIImage(named: "waitingL")
        //        }else if tag == 1 && answer[questionNumber][tag][1] == "True"{
        //            answerImgAnswerB.image = UIImage(named: "correctR")
        //        }else if tag == 1 && answer[questionNumber][tag][1] == "False"{
        //            answerImgAnswerB.image = UIImage(named: "waitingR")
        //        }else if tag == 2 && answer[questionNumber][tag][1] == "True"{
        //            answerImgAnswerC.image = UIImage(named: "correctL")
        //        }else if tag == 2 && answer[questionNumber][tag][1] == "False"{
        //            answerImgAnswerC.image = UIImage(named: "waitingL")
        //        }else if tag == 3 && answer[questionNumber][tag][1] == "True"{
        //            answerImgAnswerD.image = UIImage(named: "correctR")
        //        }else if tag == 3 && answer[questionNumber][tag][1] == "False"{
        //            answerImgAnswerD.image = UIImage(named: "waitingR")
        //        }
        
        //        switch tag {
        //        case 0:
        //            if answer[questionNumber][tag][1] == "True"{
        //                answerImgAnswerA.image = UIImage(named: "correctL")
        //            }else if answer[questionNumber][tag][1] == "False"{
        //                answerImgAnswerA.image = UIImage(named: "waitingL")
        //            }
        //        case 1:
        //            if answer[questionNumber][tag][1] == "True"{
        //                answerImgAnswerB.image = UIImage(named: "correctR")
        //            }else if answer[questionNumber][tag][1] == "False"{
        //                answerImgAnswerB.image = UIImage(named: "waitingR")
        //            }
        //        case 2:
        //            if answer[questionNumber][tag][1] == "True"{
        //                answerImgAnswerC.image = UIImage(named: "correctL")
        //            }else if answer[questionNumber][tag][1] == "False"{
        //                answerImgAnswerC.image = UIImage(named: "waitingL")
        //            }
        //        case 3:
        //            if answer[questionNumber][tag][1] == "True"{
        //                answerImgAnswerD.image = UIImage(named: "correctR")
        //            }else if answer[questionNumber][tag][1] == "False"{
        //                answerImgAnswerD.image = UIImage(named: "waitingR")
        //            }
        //        default:
        //            print("Error in Swift")
        //        }
//
//    }
// MARK: - END OLD - OLD
    
    
// MARK: - END OLD
//    func blink(img: UIImageView, letter: String){
//        var count = 0
//        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true, block: { (timerInBlock) in
//            count += 1
//            if count % 2 == 0{
//                img.image = UIImage(named: "waiting"+letter)
//            }else{
//                img.image = UIImage(named: "answer"+letter)
//            }
//        })
//
//    }
//
//    func newRightAnswer(tag:Int, isChecked: Bool){
//        hiddenButtons()
//        switch tag {
//        case 0:
//            blink(img: answerImgAnswerA, letter: "L")
//        case 1:
//            blink(img: answerImgAnswerB, letter: "R")
//        case 2:
//            blink(img: answerImgAnswerC, letter: "L")
//        case 3:
//            blink(img: answerImgAnswerD, letter: "R")
//        default:
//            print("Error")
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.8) {
//            self.timer.invalidate()
//            switch tag {
//            case 0:
//                if isChecked{
//                    self.answerImgAnswerA.image = UIImage(named: "correctL")
//                }else{
//                    self.answerImgAnswerA.image = UIImage(named: "waitingL")
//                }
//            case 1:
//                if isChecked{
//                    self.answerImgAnswerB.image = UIImage(named: "correctR")
//                }else{
//                    self.answerImgAnswerB.image = UIImage(named: "waitingR")
//                }
//            case 2:
//                if isChecked{
//                    self.answerImgAnswerC.image = UIImage(named: "correctL")
//                }else{
//                    self.answerImgAnswerC.image = UIImage(named: "waitingL")
//                }
//            case 3:
//                if isChecked{
//                    self.answerImgAnswerD.image = UIImage(named: "correctR")
//                }else{
//                    self.answerImgAnswerD.image = UIImage(named: "waitingR")
//                }
//            default:
//                print("Error in Swift")
//            }
//        }
//
//
//
//
//    }
//
//    func hiddenButtons(){
//        answerButtonA.isHidden = true
//        answerButtonB.isHidden = true
//        answerButtonC.isHidden = true
//        answerButtonD.isHidden = true
//    }
//
//    func showButtons(){
//        answerButtonA.isHidden = false
//        answerButtonB.isHidden = false
//        answerButtonC.isHidden = false
//        answerButtonD.isHidden = false
//    }
// MARK: - END OLD
    
}

