//
//  ViewControllerQuiz.swift
//  stroke app
//
//  Created by michael reed on 1/28/19.
//  Copyright © 2018 Cyberdev. All rights reserved.
//

import Foundation
import UIKit
//quiz
class ViewControllerQuiz: UIViewController {
    

    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerLabelOne: UIButton!
    @IBOutlet var answerLabelTwo: UIButton!
    @IBOutlet var answerLabelThree: UIButton!
    @IBOutlet var answerLabelFour: UIButton!
    
    @IBOutlet var resultsLabel: UILabel!
    
    @IBOutlet var questionStackView: UIStackView!
    
    @IBOutlet var retake: UIButton!
    
    
    @IBOutlet var trueFalseQuestionStackView: UIStackView!
    @IBOutlet var trueAnswerOutlet: UIButton!
    @IBOutlet var flaseAnswerOutlet: UIButton!
    
    
    @IBOutlet var previousButton: UIBarButtonItem!
    
    
    
    @IBOutlet var explanationButtonOutlet: UIButton!
    @IBOutlet var submitButtoOutlet: UIButton!
    
    
    var answerOne = false
    var answerTwo = false
    var answerThree = false
    var answerFour = false
    var trueButtonSelected = false
    var falseButtonSelected = false
    
    
    
    
    
    var questionIndex = 0
    
    
    
    // Sets everything to the correct color and resets the questionIndex, also customizes the navigation controller and item. 
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = UIColor.red
        questionLabel.textColor = UIColor.white
        
        customizeButtons()
        customNavigationBar()

        questionIndex = 0
        updateLabels()
    
    }
    
    
    
    
    // Reverts the quiz back to viewDidLoad anytime the user switches back to the screen from another screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        viewLoadSetUp()
    }
    
   
    
   
    
    // This func is called in the viewWillAppear makes sure the view reverts back to the first screen
    func viewLoadSetUp() {
        
        answerOne = false
        answerTwo = false
        answerThree = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        
        questionIndex = 0
        updateLabels()
        
    }
    
    
    
    
    
    // takes user back one question and sets all bools to false
    @IBAction func previousQuestion(_ sender: UIBarButtonItem) {
       
        questionIndex -= 1
        updateLabels()
        
        answerOne = false
        answerTwo = false
        answerThree = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        
        
    }
    
    
    // sets all bools to false except for answerOne, displays correct if question index == 0
    @IBAction func answerOneChosen(_ sender: UIButton) {
        answerOne = true
       answerTwo = false
        answerThree = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        if questionIndex == 0 {
            resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
            
        } else {
            resultsLabel.textColor = UIColor.black
            resultsLabel.text = "Incorrect"
        }
    
    }
    
    
    
    
    // sets all bools to false except answertwo, displays correct if questionIndex == 1
    @IBAction func answerTwoChosen(_ sender: UIButton) {
        answerTwo = true
        answerOne = false
        answerThree = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        if questionIndex == 1 {
            
            resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
            
        } else {
            resultsLabel.textColor = UIColor.black
            resultsLabel.text = "Incorrect"
        }
    
    
    
    
    }
    
    
    
    
    
    
    
    // sets all bools to false except answerThree, displays correct if questionIndex == 2
    @IBAction func answerThreeChosen(_ sender: UIButton) {
        answerThree = true
        answerOne = false
        answerTwo = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        if questionIndex == 2 {
           resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
            
        } else {
                resultsLabel.textColor = UIColor.black
                resultsLabel.text = "Incorrect"
            }
        
    }
    
    
    
    
    // sets all bools to false except answerFour, displays correct if question index == 4
    @IBAction func answerFourChosen(_ sender: UIButton) {
 
        answerFour = true
        answerOne = false
        answerTwo = false
        answerThree = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        
        if questionIndex == 4 {
            resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
            
        } else {
            resultsLabel.textColor = UIColor.black
            resultsLabel.text = "Incorrect"
        }
        
        
    }
    
    
    // sets all bools to false except trueButtonSelected, displays correct if questionIndex == 5
    @IBAction func tureAnswerSelected(_ sender: UIButton) {
        
        trueButtonSelected = true
        falseButtonSelected = false
        answerOne = false
        answerTwo = false
        answerThree = false
        answerFour = false
        
        if questionIndex == 5 {
            resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
        } else {
            resultsLabel.textColor = UIColor.black
            resultsLabel.text = "Incorrect"
        }
    
    
    
    
    }
    
    
    // sets all bools to false except falseButton Selected, displays correct if questionIndex == 3
    @IBAction func falseAnswerSelected(_ sender: UIButton) {
    
        falseButtonSelected = true
        trueButtonSelected = false
        answerOne = false
        answerTwo = false
        answerThree = false
        answerFour = false
    
        if questionIndex == 3 {
            resultsLabel.textColor = UIColor.green
            resultsLabel.text = "Correct"
        } else {
            resultsLabel.textColor = UIColor.black
            resultsLabel.text = "Incorrect"
        }
        
        
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    // This function will show the correct explanation based off of whatever button is selected.
    
    @IBAction func explainAnswerButton(_ sender: UIButton) {
        guard answerOne || answerTwo || answerThree || answerFour || trueButtonSelected || falseButtonSelected else {
            
           errorMessage()
            
            return
        }
        
        let explanationAlertText = questions[questionIndex].explanation
        
        
        switch questionIndex {
        case 0:
            if answerOne {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if answerTwo {
                showExplanation(explainMessage: explanationAlertText[1])
            } else if answerThree {
                showExplanation(explainMessage: explanationAlertText[2])
            } else if answerFour {
                showExplanation(explainMessage: explanationAlertText[3])
            }
           
        case 1:
            if answerOne {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if answerTwo {
                showExplanation(explainMessage: explanationAlertText[1])
            } else if answerThree {
                showExplanation(explainMessage: explanationAlertText[2])
            } else if answerFour {
                showExplanation(explainMessage: explanationAlertText[3])
            }
            
            
        case 2:
            if answerOne {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if answerTwo {
                showExplanation(explainMessage: explanationAlertText[1])
            } else if answerThree {
                showExplanation(explainMessage: explanationAlertText[2])
            } else if answerFour {
                showExplanation(explainMessage: explanationAlertText[3])
            }
            
        case 3:
            if trueButtonSelected {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if falseButtonSelected {
                showExplanation(explainMessage: explanationAlertText[1])
            }
            
        case 4:
            if answerOne {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if answerTwo {
                showExplanation(explainMessage: explanationAlertText[1])
            } else if answerThree {
                showExplanation(explainMessage: explanationAlertText[2])
            } else if answerFour {
                showExplanation(explainMessage: explanationAlertText[3])
            }
            
        case 5:
            if trueButtonSelected {
                showExplanation(explainMessage: explanationAlertText[0])
            } else if falseButtonSelected {
                showExplanation(explainMessage: explanationAlertText[1])
            }
            
            
            
        default:
            return
    
    
        }
    
    
    
    }
    
    
    
    
    
    
    // This function will make the screen switch to the next question.
    @IBAction func submitAnswerButton(_ sender: UIButton) {
    
    nextQuestion()
    
    
    }
    
    
    
    
    
    
    
    
    
    // This function will allow the user to retake the quiz, and it will reset everything on the page.
    @IBAction func retakeQuizButton(_ sender: Any) {
    
        questionIndex = 0
        updateLabels()
       
    
    }
    
    
    
    
    // This function will handle updating all the labels and buttons to their appropriate text. It will also update the navigation bar title.
    func updateLabels () {
        retake.isHidden = true
        resultsLabel.textColor = .black
        
        resultsLabel.text = ""
        
        
         let answerText = questions[questionIndex].answer
        let questionText = questions[questionIndex].question
       
        
        switch questionIndex {
        case 0:
            questionStackView.isHidden = false
            questionLabel.text = questionText
            answerLabelOne.setTitle(answerText[0], for: .normal)
            answerLabelTwo.setTitle(answerText[1], for: .normal)
            answerLabelThree.setTitle(answerText[2], for: .normal)
            answerLabelFour.setTitle(answerText[3], for: .normal)
            trueFalseQuestionStackView.isHidden = true
            
            
        case 1:
            questionStackView.isHidden = false
            questionLabel.text = questionText
            answerLabelOne.setTitle(answerText[0], for: .normal)
            answerLabelTwo.setTitle(answerText[1], for: .normal)
            answerLabelThree.setTitle(answerText[2], for: .normal)
            answerLabelFour.setTitle(answerText[3], for: .normal)
            trueFalseQuestionStackView.isHidden = true
        
        
        case 2:
            questionStackView.isHidden = false 
            questionLabel.text = questionText
            answerLabelOne.setTitle(answerText[0], for: .normal)
            answerLabelTwo.setTitle(answerText[1], for: .normal)
            answerLabelThree.setTitle(answerText[2], for: .normal)
            answerLabelFour.setTitle(answerText[3], for: .normal)
            trueFalseQuestionStackView.isHidden = true
            
        case 3:
            questionStackView.isHidden = true
            trueFalseQuestionStackView.isHidden = false
            questionLabel.text = questionText
            trueAnswerOutlet.setTitle(answerText[0], for: .normal)
            flaseAnswerOutlet.setTitle(answerText[1], for: .normal)
            
            
        case 4:
            trueFalseQuestionStackView.isHidden = true
            questionStackView.isHidden = false
            questionLabel.text = questionText
            answerLabelOne.setTitle(answerText[0], for: .normal)
            answerLabelTwo.setTitle(answerText[1], for: .normal)
            answerLabelThree.setTitle(answerText[2], for: .normal)
            answerLabelFour.setTitle(answerText[3], for: .normal)
            
            
        case 5:
            questionStackView.isHidden = true
            trueFalseQuestionStackView.isHidden = false
            questionLabel.text = questionText
            trueAnswerOutlet.setTitle(answerText[0], for: .normal)
            flaseAnswerOutlet.setTitle(answerText[1], for: .normal)
            
            
        
        default:
            break
        
        
        }
        
        visibilityOfPreviousButton()

        resultsLabel.isHidden = false
        explanationButtonOutlet.isHidden = false
        submitButtoOutlet.isHidden = false
        answerOne = false
        answerTwo = false
        answerThree = false
        answerFour = false
        trueButtonSelected = false
        falseButtonSelected = false
        
        let item = navigationItem
        item.title = "Question #\(questionIndex + 1)"

        }
    
    
    
    
    // This function handles adding to the questionIndex variable and it also will determine when there are no more quesions and it will show the completed screen.
    // This function also presents the user with an error if they do not first select a question
    func nextQuestion () {
        guard answerOne || answerTwo || answerThree || answerFour || trueButtonSelected || falseButtonSelected else {
           
           errorMessage()
            
            return
        }
        
        
        
        questionIndex += 1
    
        let item = navigationItem
        
        if questionIndex < questions.count {
            
            updateLabels()
        } else {
            resultsLabel.isHidden = true
            questionStackView.isHidden = true
            explanationButtonOutlet.isHidden = true
            submitButtoOutlet.isHidden = true
            trueFalseQuestionStackView.isHidden = true
            questionLabel.text = "Congrats you completed the quiz!"
            retake.isHidden = false
            buttonColor(button: retake)
            item.title = "Quiz"
        }
     
      
    }
    
    
    
    
    
    //This function creates an alert view and it will display the explanation on the screen.
    func showExplanation(explainMessage: String) {
        
        let explainAnswer = UIAlertController(title: nil, message: explainMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        explainAnswer.addAction(action)
        present(explainAnswer, animated: true , completion: nil)
    
    
    }
    
    
    
    
    // Customizes the button's color, corner radius, and shadow
    func customizeButtons () {
        
        
        labelShadow(label: questionLabel)
        
        
        buttonColor(button: answerLabelOne)
        self.answerLabelOne.layer.cornerRadius = 20
        buttonShadow(button: answerLabelOne)
        
        
        buttonColor(button: answerLabelTwo)
        self.answerLabelTwo.layer.cornerRadius = 20
        buttonShadow(button: answerLabelTwo)
        
        
        buttonColor(button: answerLabelThree)
        self.answerLabelThree.layer.cornerRadius = 20
        buttonShadow(button: answerLabelThree)
        
        
        buttonColor(button: answerLabelFour)
        self.answerLabelFour.layer.cornerRadius = 20
        buttonShadow(button: answerLabelFour)
        
        
        buttonColor(button: trueAnswerOutlet)
        self.trueAnswerOutlet.layer.cornerRadius = 20
        buttonShadow(button: trueAnswerOutlet)
        
        
        buttonColor(button: flaseAnswerOutlet)
        self.flaseAnswerOutlet.layer.cornerRadius = 20
        buttonShadow(button: flaseAnswerOutlet)
        
        
        self.retake.layer.cornerRadius = 15
        buttonShadow(button: retake)
        
        
        self.explanationButtonOutlet.layer.cornerRadius = 15
        buttonShadow(button: explanationButtonOutlet)
        
        
        self.submitButtoOutlet.layer.cornerRadius = 15
        buttonShadow(button: submitButtoOutlet)
        
        
        
        
        
    }
    
    
    
    // makes the previous button available only after the first question is answered
    func visibilityOfPreviousButton () {
        guard questionIndex != 0 else {
            self.navigationItem.leftBarButtonItem = nil
            return
        }
        self.navigationItem.leftBarButtonItem = self.previousButton
    }
    
    
    
    
    // Customizes the navigation controller
    func customNavigationBar () {
        
        let nav = navigationController!
        nav.hidesBarsOnSwipe = false
        let bar = nav.navigationBar
        bar.tintColor = UIColor.white
        let titlefont = UIFont(name: "Symbol", size: 30)
        let color = UIColor.black
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.gray
        shadow.shadowOffset = CGSize(width: 1.5, height: 1.5)
        let attributes = [NSAttributedString.Key.font: titlefont! , NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.shadow: shadow]
        bar.titleTextAttributes = attributes
        
        
        
    }
    
    
    
    
}



extension ViewControllerQuiz {
    
    // adds a shadow to buttons
    func buttonShadow (button: UIButton) {
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.75
        
    }
    
    // adds a shadow to labels
    func labelShadow (label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 5, height: 5)
        label.layer.shadowRadius = 5
        label.layer.shadowOpacity = 0.75
        
    }
    
    // sets the buttons color
    func buttonColor (button: UIButton) {
        
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        
        
    }
    
    
    // displays an error message
    func errorMessage () {
        
        let explainAnswer = UIAlertController(title: nil, message: "Please select a question first.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        explainAnswer.addAction(action)
        present(explainAnswer, animated: true , completion: nil)
        
        
    }
    
    
    
    
}
