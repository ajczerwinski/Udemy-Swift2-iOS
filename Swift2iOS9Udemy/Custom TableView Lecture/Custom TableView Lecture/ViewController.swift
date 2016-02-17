//
//  ViewController.swift
//  Custom TableView Lecture
//
//  Created by Allen Czerwinski on 2/16/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["http://images.huffingtonpost.com/2015-12-23-1450895141-5774790-food02.jpg","http://www.cgsociety.org/cgsarchive/newgallerycrits/g02/284002/284002_1189144366_large.jpg","http://vignette2.wikia.nocookie.net/muppet/images/0/0e/Goblins2.JPG/revision/latest?cb=20070216014552","http://athenacinema.com/wp-content/uploads/2015/01/labyrinthbdcap8_original.jpg","http://1.bp.blogspot.com/-b65fKj4bS98/VI84WBRaGEI/AAAAAAAA2ZE/V4Lc-5SvEd0/s1600/labyrinth19.png"]
    
    var uglyTitles = ["Goblins are awesome", "Jareth is kewl", "Bowie 4Ever", "This movie is awesome", "The fire gang is creepy"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "dog")
            }
            
            cell.configureCell(img, text: uglyTitles[indexPath.row])
            
            return cell
        } else {
            return UglyCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
   


}

