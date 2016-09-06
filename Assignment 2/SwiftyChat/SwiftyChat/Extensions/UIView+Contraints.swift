//
//  Created by stefan Renne
//

import UIKit

/* Find Constraints */
extension UIView {
    public func topConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .top, relation: .equal)
    }
    
    public func rightConstraint() -> NSLayoutConstraint? {
        let trailing = searchConstaint(with: .trailing, relation: .equal)
        let right = searchConstaint(with: .right, relation: .equal)
        return (trailing != nil) ? trailing : right
    }
    
    public func bottomConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .bottom, relation: .equal)
    }
    
    public func leftConstraint() -> NSLayoutConstraint? {
        let leading = searchConstaint(with: .leading, relation: .equal)
        let left = searchConstaint(with: .left, relation: .equal)
        return (leading != nil) ? leading : left
    }
    
    public func heightConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .height, relation: .equal)
    }
    
    public func widthConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .width, relation: .equal)
    }
    
    public func centerXConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .centerX, relation: .equal)
    }
    
    public func centerYConstraint() -> NSLayoutConstraint? {
        return searchConstaint(with: .centerY, relation: .equal)
    }
    
    private func searchConstaint(with attribute: NSLayoutAttribute, relation: NSLayoutRelation) -> NSLayoutConstraint? {
        
        func isMatchingConstraint(constraint: NSLayoutConstraint) -> Bool {
            
            let firstItem = constraint.firstItem as? UIView
            let secondItem = constraint.secondItem as? UIView
    
            let searchAttributeFirstMatches: Bool = (firstItem != nil && firstItem == self && constraint.firstAttribute == attribute)
            let searchAttributeSecondMatches: Bool  = (secondItem != nil && secondItem == self && constraint.secondAttribute == attribute)
            return searchAttributeFirstMatches || searchAttributeSecondMatches
        }
        
        let constraints: [NSLayoutConstraint]? = (attribute == .width || attribute == .height) ? self.constraints : self.superview?.constraints
        return constraints?.filter(isMatchingConstraint).first
    }
    
}
