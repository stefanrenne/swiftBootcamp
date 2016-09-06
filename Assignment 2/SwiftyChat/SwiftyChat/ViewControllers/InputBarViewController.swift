//
//  InputViewController.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit

protocol InputBarDelegate {
    func inputBarDidEnterText(text: String)
}

class InputBarViewController: BaseViewController, UITextFieldDelegate {
    
    public var delegate: InputBarDelegate?
    
    @IBOutlet weak var inputTextField: UITextField!
    
    override internal func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.hideKeyboard()
        didEnterText()
        return false
    }
    
    // MARK: Handlers
    
    @IBAction internal func sendChatMessageAction(_ sender: AnyObject) {
        didEnterText()
    }
    
    internal func didEnterText() {
        if let text = inputTextField.cleanText() {
            delegate?.inputBarDidEnterText(text: text)
        }
    }

}
