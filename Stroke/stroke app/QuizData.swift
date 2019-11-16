//
//  QuizData.swift
//  stroke app
//
//  Created by michael reed on 1/28/19.
//  Copyright © 2019 Cyberdev. All rights reserved.
//

import Foundation




struct Questions {
    var question: String
    var answer: [String]
    var explanation: [String]
}



// Array of all the questions and answers for the quiz
var questions: [Questions] = [
  
    // question #1
    Questions(question: "What is another name for a stroke?", answer: [
        
        "Brain Attack" ,
        "Heart Attack" ,
        "Myocardial infarction" ,
        "None of the above" ],
              
        explanation: [
        
        "A stroke attacks the brain, cutting off blood flow to a section of the brain. It can cause many brain cells to die.",
        "A heart attack attacks the heart blocking blood flow through the coronary artiry and not allowing blood to get to the heart muscles.",
        "A myocardial infarction is another name for a heart attack wich blocks blood flow through the coronary artiry and does not allow blood to reach the heart muscles.",
        "Another name for a stroke is a brain attack because a stroke damages the brain." ]),
    
    
    
    // question #2
    Questions(question: "What is another name for a transient ischemic attack?", answer: [
        
        "Attack" ,
        "Mini-stroke" ,
        "Ischemic-stroke" ,
        "Transient-stroke"],
              
              explanation: [
        
                "Attack is not another term for a transient ischemic attack and instead means an aggressive and violent action against a person or place.",
                "A transient ischemic attack produces similar symptoms to a stroke, but it only lasts a few minutes and causes no permanent damage. Which is why it is called a mini-stroke.",
                "In a transient ischemic attack the blockage is only temporary and the blood flow returns on its own. However, the opposite is true for a ischemic-stroke.",
                "Transient-stroke is not a term used, instead the term is a transient ischemic attack. Which is most often refered to as a mini-stroke." ]),
       
        
        
    
    
    
    // question #3
    Questions(question: "What should you do if you see someone having a stroke?", answer: [
        
        "Drive them to the hospital" ,
        "Call their family" ,
        "Call 911 quickly" ,
        "Leave them Alone" ],

              explanation: [

                "Driving them to the hospital is not smart. It is best to call 911 and the ambulance will be there shortly to help them.",
                "You should not call their family until you have first called 911 and made sure they are in good hands and being taken care of.",
                "The best thing to do is to call 911 immidiatly, to ensure the ambulance gets there as soon as possible to help them.",
                "You should NOT leave them alone. If you see someone having a stroke call 911 imidiatly." ]),
    
    
    
    
    // question #4
    Questions(question: "Once you have a stroke you will never recover from the weakness on one side of your body.", answer: ["True" , "False"], explanation: [
        
        
        "This statement is false, depending on the brain injury sustained you will recover some of your functions." ,
        "You will recover some of your functions even if it takes a long time, everything depends on how bad of an injury your brain sustained." ]),
    
    
    
    
    
    
    // question #5
    Questions(question: "Risk Factors that can be modified.", answer: [
        
        "Blood Pressure Control",
        "Diabetes Control",
        "Smoking",
        "All of the above" ],
              
              explanation: [
        
        "High Blood pressure is the most significant controllable risk factor.",
        "Diabetes is a controllable risk factor, and it is important to keep blood sugar low. ",
        "Smoking is a controllable risk factor, if you smoke you should take steps to stop.",
        "Every answer is a controllable risk factor. Minimizing each of these risk factors can go a long way to decrease the amount of strokes that occur every year." ]),
    
    
    
    
   
    
    
    // question #6
    Questions(question: "We give medicine to thin your blood to prevent an embolic stroke when you have a condition known as atrial fibrillation.", answer: ["True" , "False"], explanation: [
    
    "Blood thinners such as Coumadin, Eliquis, and Pradaxa are common to prevent a stroke from atrial fibrillation.",
    "This statement is true we do give medicine to thin your blood and prevent an embolic stroke when you have a condition known as atrial fibrillation." ]) ]



