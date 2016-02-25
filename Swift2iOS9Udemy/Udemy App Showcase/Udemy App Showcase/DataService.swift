//
//  DataService.swift
//  Udemy App Showcase
//
//  Created by Allen Czerwinski on 2/25/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://udemy-class-social.firebaseio.com")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
}