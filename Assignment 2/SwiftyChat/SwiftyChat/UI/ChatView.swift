//
//  ChatView.swift
//  SwiftyChat
//
//  Created by stefan.renne@philips.com on 06/09/16.
//  Copyright © 2016 StefanRenne. All rights reserved.
//

import UIKit

class ChatView: UITextView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setupView()
    }
    
    private func setupView() {
        textContainerInset = UIEdgeInsetsMake(0.0, 0.0, 58.0, 0.0)
    }
    
    func append(text appendString: String) {
        if let oldString = self.text {
            self.text = (oldString.isEmpty) ? appendString : oldString + "\n\(appendString)"
        } else {
            self.text = appendString
        }
    }
    
}
