//
//  Flow.swift
//  QuizApp
//
//  Created by sree on 25/03/21.
//

import Foundation


protocol Router {
    
    func routeTo(question:String)
}


class Flow {
    let router:Router
    //    let router2:Router
    let questions:[String]
    init(router:Router,questions:[String]) {
        self.router = router
        self.questions = questions
        
    }
    init(router:Router,router2:Router,questions:[String]) {
        self.router = router
        self.questions = questions
//        self.router2 = router2
    }
    
    
    func start() {
        if let firstQuestion = questions.first {
            router.routeTo(question: firstQuestion)
            
        }
        
    }
}


// delegate functionality

/*
 
 class Rou:Router {
 let flow = DelegateCheck()
 init() {
 flow.delegate = self
 }
 func routeTo(question: String) {
 print("this is how route delegate works")
 }
 
 }
 
 class DelegateCheck {
 
 var delegate:Router?
 
 
 func start() {
 delegate?.routeTo(question: "")
 }
 }
 
 */

