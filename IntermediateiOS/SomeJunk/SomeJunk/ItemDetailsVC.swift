//
//  ItemDetailsVC.swift
//  SomeJunk
//
//  Created by Allen Czerwinski on 6/28/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    @IBOutlet weak var thumbImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    var stores = [Store]()
    var itemToEdit: Item?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
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
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        getStores()
        
        if itemToEdit != nil {
            loadItemData()
        }
    }
    
    func loadItemData() {
        
        if let item = itemToEdit {
            
            if let title = item.title {
                titleField.text = title
            }
            
            if let price = item.price {
                priceField.text = "\(price)"
            }
            
            if let details = item.details {
                detailsField.text = details
            }
            
            if let image = thumbImg.image {
                item.setItemImage(image)
            }
            
            if let store = item.store {
                
                var index = 0
                repeat {
                    let s = stores[index]
                    
                    if s.name == store.name {
                        storePicker.selectRow(index, inComponent: 0, animated: false)
                        break
                    }
                    index += 1
                } while (index < stores.count)
            }
        }
        
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
        print(stores[row].name!)
    }
    
    @IBAction func deletedPressed(sender: AnyObject) {
        if itemToEdit != nil {
            ad.managedObjectContext.deleteObject(itemToEdit!)
            ad.saveContext()
            
            }
            
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    @IBAction func savePressed(sender: AnyObject) {
        
        var item: Item!
        
        if itemToEdit == nil {
            item = NSEntityDescription.insertNewObjectForEntityForName("Item", inManagedObjectContext: ad.managedObjectContext) as! Item
        } else {
            item = itemToEdit
        }
        
        
        if let title = titleField.text {
            item.title = title
        }
        
        if let price = priceField.text {
            let priceStr = NSString(string: price)
            let priceDbl = priceStr.doubleValue
            item.price = NSNumber(double: priceDbl)
        }
        
        if let details = detailsField.text {
            item.details = details
        }
        
        item.store = stores[storePicker.selectedRowInComponent(0)]
        print((item.store?.name!)!)
        
        ad.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        thumbImg.image = image
        
    }
    
    @IBAction func imageBtnPressed(sender: AnyObject) {
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
}
