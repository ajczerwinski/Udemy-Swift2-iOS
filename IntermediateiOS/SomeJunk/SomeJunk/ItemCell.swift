//
//  ItemCell.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 6/23/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price!)"
        details.text = item.details
        if let image = item.thumbImg as? UIImage {
            thumb.image = image
        }
//        thumb.image = item.getItemImage()
//        if let image = thumb.image {
//            item.setItemImage(image)
//        }
        
    }
    

}
