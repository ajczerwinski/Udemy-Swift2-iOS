//
//  NewStoreVC.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 7/12/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import CoreData

class NewStoreVC: UIViewController {

    
    @IBOutlet weak var storeTitle: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStoreBtnPressed(sender: AnyObject) {
        
        var store: Store!
        
        if storeTitle.text != "" {
            store = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
        } else {
            print("Store title cannot be blank")
        }
        
        store.name = storeTitle.text
        
        ad.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    

}
