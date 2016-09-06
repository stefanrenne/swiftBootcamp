//
//  BaseViewController.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Signup for screen size change notifications
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillShow(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillHide(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    
    // MARK: Keyboard Appearance Screen Size
    func keyboardWillShow(notification sender: Notification) {
        guard let keyboardValue = sender.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue,
            let duration = sender.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber else {
            return
        }

        updateKeyboardSize(keyboard: keyboardValue.cgRectValue.height, animation: duration.doubleValue, append: nil)
    }
    
    func keyboardWillHide(notification sender: Notification) {
        guard let duration = (sender as NSNotification).userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber else {
            return
        }
        
        updateKeyboardSize(keyboard: 0.0, animation: duration.doubleValue, append: nil)
    }
    
    @IBOutlet weak var containerView: UIView?
    func updateKeyboardSize(keyboard height: CGFloat, animation duration: Double, append animation: (() -> ())?) {
        
        containerView?.bottomConstraint()?.constant = height
        
        UIView.animate(withDuration: duration) {
            self.view.layoutIfNeeded()
            
            if let animation = animation {
                animation()
            }
        }
    }
}
