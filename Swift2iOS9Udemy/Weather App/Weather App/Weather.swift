//
//  Weather.swift
//  Weather App
//
//  Created by Allen Czerwinski on 2/23/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import Alamofire

class Weather {
    private var _conditions: String!
    private var _temperature: Double!
    private var _weatherURL: String!
    
    var conditions: String {
        if _conditions == nil {
            _conditions = ""
        }
        return _conditions
    }
    
    var temperature: Double {
        if _temperature == nil {
            _temperature = 0.0
        }
        return _temperature
    }
    
    init() {
        self._weatherURL = URL_BASE
    }
//    init(conditions: String, temperature: Int) {
//        self._conditions = conditions
//        self._temperature = temperature
//        
//        self._weatherURL = "\(URL_BASE)"
//    }
    
    func downloadWeatherDetails(completed: DownloadComplete) {
        let url = NSURL(string: _weatherURL)!
        Alamofire.request(.GET, url).responseJSON { response in
            let result = response.result
//            print(result.value!)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let weather = dict["weather"] as? [AnyObject] where weather.count > 0 {
                    if let conditions = weather[0]["main"] as? String {
                        self._conditions = conditions
                    }
                    
                    print(self._conditions)
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> where main.count > 0 {
                    if let temperature = main["temp"] {
                        self._temperature = temperature as! Double
                    }
                    print(self._temperature)
                }
                completed()
                
//                if let conditions = dict["weather"]![0]["main"] as? String {
//                    self._conditions = conditions
//                }
//                if let temperature = dict["main"]!["temp"] as? String {
//                    self._temperature = temperature
//                }
//                
//                print(self._temperature)
//                print(self._conditions)
            }
        }
    }
    
    
}
