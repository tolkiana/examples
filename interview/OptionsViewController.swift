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
    var lettersString: String?
    var numbersString: String?
    var reverseString: String?
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        inputLabel.text = inputString
    }
    
    // MARK: IBActions
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func searchLetters(sender: AnyObject) {
    }
    
    @IBAction func searchNumbers(sender: AnyObject) {
    }
    
    @IBAction func searchReverseString(sender: AnyObject) {
    }
    
    // MARK: Private methods
    
    func lettersForString(string: String) -> String? {
        return nil
    }
    
    func numbersForString(string: String) -> String? {
        return nil
    }
    
    func reverseStringForString(string: String) -> String? {
        return nil
    }
}
