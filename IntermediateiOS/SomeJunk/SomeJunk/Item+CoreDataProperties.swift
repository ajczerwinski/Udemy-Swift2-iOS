//
//  Item+CoreDataProperties.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 6/22/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var title: String?
    @NSManaged var details: String?
    @NSManaged var price: NSNumber?
    @NSManaged var created: NSDate?
    @NSManaged var store: NSManagedObject?
    @NSManaged var image: NSManagedObject?
    @NSManaged var itemType: NSManagedObject?

}
