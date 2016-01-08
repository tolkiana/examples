//
//  ViewController.swift
//  interview
//
//  Created by Nelida Velazquez on 1/7/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OptionsDelegate {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var resultTextField: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier ==  "SendStringSegueIdentifier" {
            
            guard let navigationController = segue.destinationViewController as? UINavigationController else {
                return
            }
            
            guard let optionsController = navigationController.viewControllers.first as? OptionsViewController else {
                return
            }
            
            optionsController.inputString = self.inputTextField.text
            optionsController.optionsDelegate = self
        }
    }
    
    // MARK: OptionsDelegate
    
    func didSelectLettersString(letters: String?) {
        self.resultTextField.text = letters
    }
    
    func didSelectNumbersString(numbers: String?) {
        self.resultTextField.text = numbers
    }
    
    func didSelectReverseString(string: String?) {
        self.resultTextField.text = string
    }
}

