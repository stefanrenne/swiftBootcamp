//
//  ViewController.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit
import ChatLib

class ChatViewController: BaseViewController, ChatManagerDelegate, InputBarDelegate {

    private var manager: ChatManager?
    var name: String?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: Create ChatManager Instance, and assign to the 'manager' property
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let inputBarViewController = segue.destination as! InputBarViewController
        
        // TODO: Assign current view as delegate for InputBarViewController
        
    }
    
    // MARK: ChatDelegate
    @IBOutlet weak var chatView: ChatView!
    func didReceiveMessage(_ message: String, from author: String) {
        
        // TODO: Inplement ChatManager's delegate call
        // Append the recieved message to the chat view
        
    }
    
    // MARK: InputBarDelegate
    func inputBarDidEnterText(text: String) {
        
        // TODO: Send your just enterd text to the ChatManager
        
    }
    
    // MARK: Keyboard Appearance Screen Size
    @IBOutlet weak var textScrollView: UIScrollView!
    
    override func updateKeyboardSize(keyboard height: CGFloat, animation duration: Double, append animation: (() -> ())?) {
        super.updateKeyboardSize(keyboard: height, animation: duration) { 
            if let animation = animation {
                animation()
            }
            self.textScrollView.scrollToBottom()
        }
    }
    
}

