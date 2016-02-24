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
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var conditionsUI: UILabel!
    @IBOutlet weak var temperatureUI: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
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
        switch weather.conditions {
            case "Rain":
                weatherIcon.image = UIImage(named: "rain")
            case "Thunderstorm":
                weatherIcon.image = UIImage(named: "thunderstorm")
            case "Drizzle":
                weatherIcon.image = UIImage(named: "rain")
            case "Snow":
                weatherIcon.image = UIImage(named: "snow")
            case "Atmosphere":
                weatherIcon.image = UIImage(named: "cloud")
            case "Clear":
                weatherIcon.image = UIImage(named: "clear")
            default:
                weatherIcon.image = UIImage(named: "cloud")
            
        }
        temperatureUI.text = "\(weather.temperature)°F"
        
    }

}

