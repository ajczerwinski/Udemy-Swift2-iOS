//
//  PhotoVC.swift
//  My Favorite Places - Thompson Falls
//
//  Created by Allen Czerwinski on 2/15/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class PhotoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    

}
