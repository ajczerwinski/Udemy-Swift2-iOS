//
//  Item.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 7/14/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Item: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
    
    func setItemImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.thumbImg = data
    }

    func getItemImage() -> UIImage {
        
        let img = UIImage(data: self.thumbImg!)!
        return img
        
    }
    
}
