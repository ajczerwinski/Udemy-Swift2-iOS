//
//  ViewController.swift
//  No-Storyboard Assignment
//
//  Created by Allen Czerwinski on 2/14/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    
    var blueVC: BlueVC!
    var printTxt = "Welcome to the Yellow View!"
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(printMe: String) {
        self.init(nibName: "YellowVC", bundle: nil)
        printTxt = printMe
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printLbl.text = printTxt
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadBlueView(sender: AnyObject) {
        blueVC = BlueVC(printMe: "Welcome to the Blue View!")
        self.presentViewController(blueVC, animated: true, completion: nil)
    }
    


}

