//
//  UITextField+Text.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit

extension UITextField {
    
    func cleanText() -> String? {
        var returnText: String?
        if let text = text, !text.isEmpty {
            returnText = text
            self.text = nil
        }
        return returnText
    }
    
    func hideKeyboard() {
        resignFirstResponder()
    }

}
