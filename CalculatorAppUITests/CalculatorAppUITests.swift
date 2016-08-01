//
//  CalculatorAppUITests.swift
//  CalculatorAppUITests
//
//  Created by Mohammad Azam on 8/1/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldBeAbleToAddTwoNumbers() {
        
        let app = XCUIApplication()
        
        app.textFields["firstNumberTextField"].tap()
        app.textFields["firstNumberTextField"]
        app.textFields["secondNumberTextField"].tap()
        app.textFields["secondNumberTextField"]
      
        app.buttons["showResultButton"].tap()
        
    }
    
//    func testShouldMakeSureThatLabelIsPopulatedWithCorrectAddResultWhenButtonClicked() {
//        
//        let app = XCUIApplication()
//        
//        let firstNumberTextField = app.textFields["firstNumberTextField"]
//        firstNumberTextField.tap()
//        firstNumberTextField.typeText("5")
//        
//        let secondNumberTextField = app.textFields["secondNumberTextField"]
//        secondNumberTextField.tap()
//        secondNumberTextField.typeText("2")
//        
//        let button = app.buttons["showResultButton"]
//        button.tap()
//        
//        let resultLabel = app.staticTexts["resultLabel"]
//        
//        XCTAssertTrue((resultLabel.value as! String) == "7")
//        
//        
//    }
    
    func testShouldMakeSureThatTextFieldsAreEmptyWhenViewIsLaunched() {
        
        let app = XCUIApplication()
        
        let firstNumberTextField = app.textFields["firstNumberTextField"]
        let secondNumberTextField = app.textFields["secondNumberTextField"]
        
        
        XCTAssertTrue((firstNumberTextField.value as! String).characters.count == 0)
        XCTAssertTrue((secondNumberTextField.value as! String).characters.count == 0)
        
    }
    
    
}
