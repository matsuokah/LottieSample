//
//  UIView+Constraint.swift
//  LottieSample
//
//  Created by matsuokah on 2017/10/14.
//  Copyright © 2017 matsuokah. All rights reserved.
//

import UIKit

extension UIView {
	func fitToParent() {
		guard let parent = self.superview else { return  }
		let margin = CGFloat(0)
		translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint(item: self,
		                   attribute: .top,
		                   relatedBy: .equal,
		                   toItem: parent,
		                   attribute: .top,
		                   multiplier: 1,
		                   constant: margin).isActive = true
		
		NSLayoutConstraint(item: self,
		                   attribute: .bottom,
		                   relatedBy: .equal,
		                   toItem: parent,
		                   attribute: .bottom,
		                   multiplier: 1,
		                   constant: margin).isActive = true
		
		NSLayoutConstraint(item: self,
		                   attribute: .leading,
		                   relatedBy: .equal,
		                   toItem: parent,
		                   attribute: .leading,
		                   multiplier: 1,
		                   constant: margin).isActive = true
		
		NSLayoutConstraint(item: self,
		                   attribute: .trailing,
		                   relatedBy: .equal,
		                   toItem: parent,
		                   attribute: .trailing,
		                   multiplier: 1,
		                   constant: margin).isActive = true
	}
}
