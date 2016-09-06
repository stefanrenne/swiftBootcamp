//
//  NameInputViewController.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit

class NameInputViewController: BaseViewController, InputBarDelegate {
    
    // MARK: Link Up the InputBarDelegate
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // TODO: Assign current view as delegate for InputBarViewController
        
        // TODO: Assign "myName" as "name" in ChatViewController
        
    }
    
    // MARK: InputBarDelegate
    func inputBarDidEnterText(text: String) {
        
        // TODO: presentConfirmationAlert with the just entered text
        
    }
    
    var myName: String?
    func presentConfirmationAlert(name: String) {
        myName = name
        let yesAction = UIAlertAction(title: "Yeah, of course!", style: .default){ (action) in
            self.performSegue(withIdentifier: "login", sender: self)
        }
        let noAction = UIAlertAction(title: "How about, No", style: .cancel, handler: nil)
        
        let alertController = UIAlertController(title: "Hello,", message: "is your name really \(name)?", preferredStyle: .alert)
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        present(alertController, animated: true, completion: nil)
    }
}
