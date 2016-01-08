//
//  OptionsViewController.swift
//  interview
//
//  Created by Nelida Velazquez on 1/7/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
    
    @IBOutlet var inputLabel: UILabel!
    
    var inputString: String?
    weak var optionsDelegate: OptionsDelegate?
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        inputLabel.text = inputString
    }
    
    // MARK: IBActions
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func searchLetters(sender: AnyObject) {
        let letters = self.lettersForString(self.inputString)
        self.optionsDelegate?.didSelectLettersString(letters)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func searchNumbers(sender: AnyObject) {
        let numbers = self.numbersForString(self.inputString)
        self.optionsDelegate?.didSelectNumbersString(numbers)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func searchReverseString(sender: AnyObject) {
        let reverseString = self.reverseStringForString(self.inputString)
        self.optionsDelegate?.didSelectReverseString(reverseString)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: Private methods
    
    func lettersForString(string: String?) -> String? {
        return string
    }
    
    func numbersForString(string: String?) -> String? {
        return string
    }
    
    func reverseStringForString(string: String?) -> String? {
        return string
    }
}
