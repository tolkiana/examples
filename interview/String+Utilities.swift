//
//  String+Utilities.swift
//  interview
//
//  Created by Nelida Velazquez on 1/7/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

import Foundation

extension String {

    func letters() -> String? {
        
        var letters = ""
        for chr in (self.characters) {
            if ((chr >= "a" && chr <= "z") || (chr >= "A" && chr <= "Z") ) {
                letters.append(chr)
            }
        }
        return letters
    }
    
    func numbers() -> String? {
        
        var letters = ""
        for chr in (self.characters) {
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
                letters.append(chr)
            }
        }
        return letters
    }
    
    func reverseString() -> String? {
        
        var reverseString = ""
        
        for character in (self.characters.reverse()) {
            reverseString.append(character)
        }
        return reverseString
    }

}