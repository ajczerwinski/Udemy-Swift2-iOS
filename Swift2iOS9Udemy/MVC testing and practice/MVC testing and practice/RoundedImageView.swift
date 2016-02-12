//
//  RoundedImageView.swift
//  MVC testing and practice
//
//  Created by Allen Czerwinski on 2/12/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 15.0
        self.clipsToBounds = true
    }

}
