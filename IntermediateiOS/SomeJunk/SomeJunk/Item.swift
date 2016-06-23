//
//  Item.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 6/22/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import CoreData


class Item: NSManagedObject {

    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }

}
