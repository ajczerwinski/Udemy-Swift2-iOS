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
    private var _temperature: String!
    private var _day: String!
    private var _date: String!
    private var _time: String!
    private var _sunrise: String!
    private var _sunset: String!
    private var _humidity: String!
    private var _windSpeed: String!
    private var _windDirection: WindDirection!
    
    private var _weatherURL: String!
    
    enum WindDirection {
        case N
        case NE
        case E
        case SE
        case S
        case SW
        case W
        case NW
    }
    
    var conditions: String {
        if _conditions == nil {
            _conditions = ""
        }
        return _conditions
    }
    
    var temperature: String {
        if _temperature == nil {
            _temperature = ""
        }
        return _temperature
    }
    
    var day: String {
        if _day == nil {
            _day = ""
        }
        return _day
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var time: String {
        if _time == nil {
            _time = ""
        }
        return _time
    }
    
    var sunrise: String {
        if _sunrise == nil {
            _sunrise = ""
        }
        return _sunrise
    }
    
    var sunset: String {
        if _sunset == nil {
            _sunset = ""
        }
        return _sunset
    }
    
    var humidity: String {
        if _humidity == nil {
            _humidity = ""
        }
        return _humidity
    }
    
    var windSpeed: String {
        if _windSpeed == nil {
            _windSpeed = ""
        }
        return _windSpeed
    }
    
    var windDirection: WindDirection {
        get {
            return _windDirection
        }
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
                    if let temperature = main["temp"] as? Double {
                        let temp = 1.8 * (temperature - 273) + 32
                        
                        let formattedTemp = NSString(format: "%.0f", temp)
                        self._temperature = formattedTemp as String
                        
                    }
                    print(self._temperature)
                }
                
                if let dateToday = dict["dt"] as? Double {
                    let date = NSDate(timeIntervalSince1970: dateToday)
                    let dayFormatter = NSDateFormatter()
                    let dateFormatter = NSDateFormatter()
                    let timeFormatter = NSDateFormatter()
                    dayFormatter.dateFormat = "EEEE"
                    dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
                    timeFormatter.dateFormat = "h:mm a"
                    self._day = dayFormatter.stringFromDate(date)
                    self._date = dateFormatter.stringFromDate(date)
                    self._time = timeFormatter.stringFromDate(date)
                }
                
            }
            
            
            
            
            
            
            
            
            completed()
        }
    }
    
    
}
