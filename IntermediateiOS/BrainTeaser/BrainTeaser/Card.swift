//
//  Card.swift
//  BrainTeaser
//
//  Created by Allen Czerwinski on 5/23/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class Card: UIView {

    let shapes = ["blue_ball", "green_square", "red_triangle"]
    
    var currentShape: String!
    
    @IBOutlet weak var shapeImage: UIImageView!
    
    @IBOutlet weak var xCheckMark: UIImageView!
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    override func awakeFromNib() {
        setupView()
        selectShape()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        self.layer.shadowColor = UIColor(red: 157.0/255.0, green: 157.0/255.0, blue: 157.0/255.0, alpha: 1.0).CGColor
        self.setNeedsLayout()
    }
    
    func selectShape() {
        currentShape = shapes[Int(arc4random_uniform(3))]
        shapeImage.image = UIImage(named: currentShape)
    }

}
