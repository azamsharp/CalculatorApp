//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by Mohammad Azam on 8/1/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField :UITextField!
    @IBOutlet weak var secondNumberTextField :UITextField!
    @IBOutlet weak var resultLabel :UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonPressed() {
        
        let firstNumber = Int(self.firstNumberTextField.text!)
        let secondNumber = Int(self.secondNumberTextField.text!)
        
        self.resultLabel.text = "\(firstNumber! + secondNumber!)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
