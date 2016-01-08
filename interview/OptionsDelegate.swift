//
//  OptionsDelegate.swift
//  interview
//
//  Created by Nelida Velazquez on 1/7/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

import Foundation

protocol OptionsDelegate {

    func didSelectLettersString(letters: String)
    func didSelectNumbersString(numbers: String)
    func didSelectReverseString(string: String)
}