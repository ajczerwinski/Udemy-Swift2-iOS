//
//  CustomTextField.swift
//  BrainTeaser
//
//  Created by Allen Czerwinski on 5/19/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    @IBInspectable var inset: CGFloat = 0
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
    }
}
