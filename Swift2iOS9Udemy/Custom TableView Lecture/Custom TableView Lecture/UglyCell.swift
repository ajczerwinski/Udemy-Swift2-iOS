//
//  UglyCell.swift
//  Custom TableView Lecture
//
//  Created by Allen Czerwinski on 2/16/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }
    
    func configureCell(image:UIImage, text:String) {
        mainImg.image = image
        mainLbl.text = text
    }

}
