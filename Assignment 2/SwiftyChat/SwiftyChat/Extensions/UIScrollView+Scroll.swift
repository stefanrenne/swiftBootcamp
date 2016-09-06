//
//  UIScrollView+Scroll.swift
//  SwiftyChat
//
//  Created by stefan Renne & Ruud Puts
//

import UIKit

extension UIScrollView {

    func scrollToBottom() {
        let offset = (contentSize.height > bounds.size.height) ? ((contentSize.height - bounds.size.height) + 58.0) : 0.0
        DispatchQueue.main.async {
            self.setContentOffset(CGPoint(x: 0, y: offset), animated: false)
        }
    }
}
