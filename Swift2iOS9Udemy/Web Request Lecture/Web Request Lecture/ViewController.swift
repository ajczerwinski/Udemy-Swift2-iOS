//
//  ViewController.swift
//  Web Request Lecture
//
//  Created by Allen Czerwinski on 2/16/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        print(container.bounds.width)
        print(container.bounds.height)
    }
    
    override func viewDidAppear(animated: Bool) {
        print(container.bounds.width)
        print(container.bounds.height)
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com/")
    }
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.steak-enthusiast.com/")
    }
    


}

