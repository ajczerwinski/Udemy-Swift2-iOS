//
//  RedVC.swift
//  No-Storyboard Assignment
//
//  Created by Allen Czerwinski on 2/14/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class RedVC: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    
    var printTxt = ""
    
    convenience init(printMe: String) {
        self.init(nibName: "RedVC", bundle: nil)
        printTxt = printMe
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printLbl.text = printTxt
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
