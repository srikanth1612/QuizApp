//
//  FlowTest.swift
//  QuizAppTests
//
//  Created by sree on 25/03/21.
//

import XCTest
import Foundation
@testable import QuizApp
class FlowTest: XCTestCase {
    
    
    func test_start_doesnotRouteToQuestion() {
        let router = RouterSpy()
        let sut = Flow(router: router, questions: [])
        sut.start()
        
        XCTAssertEqual(router.routerQuestionCount, 0)
    }
    
    func test_start_RouteToQuestion1() {
        let router = RouterSpy()
        let sut = Flow(router: router, questions: ["Q1"])
        sut.start()
        
        XCTAssertEqual(router.routerQuestionCount, 1)
    }
    
    
    
    func test_start_RouteToQuestion1Check2Routes() {
        let router = RouterSpy()
        let sut = Flow(router: router, questions: ["Q1"])
        sut.start()
        
        XCTAssertEqual(router.routeQuestion, "Q1")
    }
    
    func test_start_RouteToQuestion1Check() {
        let router = RouterSpy()
//        let router2 = RouterSpy2()
        let sut = Flow(router: router,router2: router, questions: ["Q1"])
        sut.start()
        
        XCTAssertEqual(router.routeQuestion, "Q1")
    }
    
    
    
    class RouterSpy:Router {
        //        var thing: String = "question"
        
        var routerQuestionCount = 0
        var routeQuestion:String? = nil
        func routeTo(question: String) {
            routerQuestionCount += 1
            routeQuestion = question
            
        }
    }
    
    
//    
//    class RouterSpy2:Router {
//        func routeTo(question: String) {
//            print("question is \(question)")
//        }
//        
//        
//    }
    
    
}
