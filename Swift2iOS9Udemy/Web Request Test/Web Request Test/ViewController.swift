//
//  ViewController.swift
//  Web Request Test
//
//  Created by Allen Czerwinski on 2/20/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/79/"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    print(json)
                } catch {
                    print("Could not serialize")
                }
            }
        }.resume()
    }



}

