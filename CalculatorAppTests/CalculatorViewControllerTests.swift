//
//  CalculatorViewControllerTests.swift
//  CalculatorApp
//
//  Created by Mohammad Azam on 8/1/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import CalculatorApp

class CalculatorViewControllerTests: XCTestCase {
    
    private var storyboard :UIStoryboard!
    private var controller :CalculatorViewController!
    
    override func setUp() {
        super.setUp()
        
        storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        controller = storyboard.instantiateViewControllerWithIdentifier("CalculatorViewController") as! CalculatorViewController
        
        let v = controller.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldDisplayResultWhenButtonIsPressed() {
        
        controller.firstNumberTextField.text = "5"
        controller.secondNumberTextField.text = "2"
        
        controller.addButtonPressed()
        
        let result = controller.resultLabel.text
        
        XCTAssertTrue(result == "7")
        
    }
    
    func testShouldMakeSureTextFieldsAreEmptyWhenViewIsLoaded() {
        
        XCTAssertTrue(controller.firstNumberTextField.text!.characters.count == 0)
        XCTAssertTrue(controller.secondNumberTextField.text!.characters.count == 0)
        
    }
    
    func testShouldAbleToCreateCalculatorViewControllerObject() {
        
        XCTAssertNotNil(controller)
        
    }
    
    
    
}
