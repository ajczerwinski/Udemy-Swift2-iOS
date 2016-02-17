//
//  ViewController.swift
//  NSUser Defaults Lecture
//
//  Created by Allen Czerwinski on 2/16/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var favLabel: UILabel!

    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favLabel.text = "Favorite Color: \(color)"
        } else {
            favLabel.text = "Pick a color!"
        }
        
        let personA = Person(first: "Wing", last: "Chun")
        let personB = Person(first: "Lady", last: "Gaga")
        let personC = Person(first: "Muffin", last: "Bieber")
        
        people.append(personA)
        people.append(personB)
        people.append(personC)
        
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(people)
        
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: "people")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func green(sender: AnyObject) {
        favLabel.text = "Favorite Color: Green"
        NSUserDefaults.standardUserDefaults().setValue("Green", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func teal(sender: AnyObject) {
        favLabel.text = "Favorite Color: Teal"
        NSUserDefaults.standardUserDefaults().setValue("Teal", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        if let loadedPeople = NSUserDefaults.standardUserDefaults().objectForKey("people") as? NSData {
            
            if let peopleArray = NSKeyedUnarchiver.unarchiveObjectWithData(loadedPeople) as? [Person] {
                
                for person in peopleArray {
                    print(person.firstName)
                }
            }
        }
    }
    
    @IBAction func blue(sender: AnyObject) {
        favLabel.text = "Favorite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    

}

