//
//  ItemDetailsVC.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 6/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [Store]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
//        let store1 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store1.name = "Amazon"
//        
//        let store2 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store2.name = "Walmart"
//        
//        let store3 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store3.name = "Scary Goth Club"
//        
//        let store4 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store4.name = "Best Buy"
//        
//        let store5 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store5.name = "Steve's Fish & Chips"
//        
//        let store6 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: ad.managedObjectContext) as! Store
//        store6.name = "Aussie Panel Beater"
//        
//        ad.saveContext()
        
        getStores()
        
    }
    
    func getStores() {
        
        let fetchRequest = NSFetchRequest(entityName: "Store")
        
        do {
            
            self.stores = try ad.managedObjectContext.executeFetchRequest(fetchRequest) as! [Store]
            self.storePicker.reloadAllComponents()
            
        } catch {
            // Handle error
        }
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(stores[row].name)
    }
    
}
