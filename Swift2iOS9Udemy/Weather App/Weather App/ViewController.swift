//
//  ViewController.swift
//  Weather App
//
//  Created by Allen Czerwinski on 2/22/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var conditionsUI: UILabel!
    @IBOutlet weak var temperatureUI: UILabel!
    
    var weather: Weather!

    override func viewDidLoad() {
        super.viewDidLoad()
        background.alpha = 0.4
        headerView.alpha = 1.0
        
        weather = Weather()
        weather.downloadWeatherDetails { () -> () in
            self.updateUI()
        }
    }
    
    func updateUI() {
        
        conditionsUI.text = weather.conditions
        temperatureUI.text = "\(weather.temperature)"
        
    }

}

