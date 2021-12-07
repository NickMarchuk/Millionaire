//
//  ViewController.swift
//  Millionaire
//
//  Created by Nick on 09.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var outputTextQuestion: UILabel!
    @IBOutlet var outputsTextLabels: [UILabel]!
    
    @IBOutlet var outletAnswerButtons: [UIButton]!
    @IBOutlet weak var outletQuestionButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var questionIMG: UIImageView!
    @IBOutlet var answersImage: [UIImageView]!
    
    var timer = Timer()
    var isPressed = false
    var millionareBrain = MillionareBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test()
        setLabelsAndButtons()
        
    }
    
    @discardableResult func test() -> Int {
        return 10
    }
    
    @IBAction func pressedQuestion(_ sender: UIButton) {
        
        if sender.tag == 1{
            
            if isPressed{
                millionareBrain.nextQuestion()
                setLabelsAndButtons()
                isPressed = false
            }else{
                outputTextQuestion.text = "You did not answer the question!"
            }
            
            showButtons()
            
        }else{
            
            rightAnswer(tag: sender.tag - 2)
            isPressed = true
            hiddenButtons()
              
        }
    }
    
    func rightAnswer(tag: Int){
        
        outletQuestionButton.isHidden = true
        
        if tag == 0 || tag == 2{
            blink(img: answersImage[tag], letter: "L")
        }else{
            blink(img: answersImage[tag], letter: "R")
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3 * 5.5) {
            
            self.timer.invalidate()
            
            self.outletQuestionButton.isHidden = false
            
            let isUserAnswer = self.millionareBrain.checkAnswer(tag: tag)
            
            self.scoreLabel.text = self.millionareBrain.countingScore(isTrue: isUserAnswer)
             
            switch tag {
            
            case 0:
                if isUserAnswer{
                    self.answersImage[tag].image = UIImage(named: "correctL")
                }else{
                    self.answersImage[tag].image = UIImage(named: "waitingL")
                }
            case 1:
                if isUserAnswer{
                    self.answersImage[tag].image = UIImage(named: "correctR")
                }else{
                    self.answersImage[tag].image = UIImage(named: "waitingR")
                }
            case 2:
                if isUserAnswer{
                    self.answersImage[tag].image = UIImage(named: "correctL")
                }else{
                    self.answersImage[tag].image = UIImage(named: "waitingL")
                }
            case 3:
                if isUserAnswer{
                    self.answersImage[tag].image = UIImage(named: "correctR")
                }else{
                    self.answersImage[tag].image = UIImage(named: "waitingR")
                }
            default:
                print("Error")
            }
        }
    }
    
    
    func setLabelsAndButtons(){
        outputTextQuestion.text = millionareBrain.getQuestion()
        outputsTextLabels[0].text = millionareBrain.getAnswerA()
        outputsTextLabels[1].text = millionareBrain.getAnswerB()
        outputsTextLabels[2].text = millionareBrain.getAnswerC()
        outputsTextLabels[3].text = millionareBrain.getAnswerD()
        answersImage[0].image = UIImage(named: "answerL")
        answersImage[1].image = UIImage(named: "answerR")
        answersImage[2].image = UIImage(named: "answerL")
        answersImage[3].image = UIImage(named: "answerR")
        progressBar.progress = millionareBrain.getProgressStatus()
        scoreLabel.text = millionareBrain.startScore()
    }
    
    
    func hiddenButtons(){
        for button in outletAnswerButtons {
            button.isHidden = true
        }
    }
    
    func showButtons(){
        for button in outletAnswerButtons {
            button.isHidden = false
        }
    }
    
    func blink(img: UIImageView, letter: String){
        var count = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true, block: { (timerInBlock) in
            count += 1
            if count % 2 == 0{
                img.image = UIImage(named: "waiting"+letter)
            }else{
                img.image = UIImage(named: "answer"+letter)
            }
        })
    }
    
}

