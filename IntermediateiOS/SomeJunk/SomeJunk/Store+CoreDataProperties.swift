//
//  Store+CoreDataProperties.swift
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

extension Store {

    @NSManaged var name: String?
    @NSManaged var items: NSSet?
    @NSManaged var image: NSManagedObject?

}
