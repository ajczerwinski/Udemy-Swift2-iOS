//
//  Player+CoreDataProperties.swift
//  SillyValley
//
//  Created by Allen Czerwinski on 7/21/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Player {

    @NSManaged var name: String?
    @NSManaged var playerDesc: String?
    @NSManaged var image: NSData?

}
