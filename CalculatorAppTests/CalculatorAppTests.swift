//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Mohammad Azam on 8/1/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppTests: XCTestCase {
    
    private var calculator :Calculator!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        calculator = Calculator()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
   
    func testShouldBeAbleToCreateCalculatorObject() {
        
        XCTAssertNotNil(calculator)
    }
    
    func testShouldBeAbleToAddTwoNumbers() {
        
        let result = calculator.add(5, secondNumber: 2)
        XCTAssertEqual(7, result)
    }
    
    
    
}
