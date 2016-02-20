//
//  BootcampAnnotation.swift
//  DevBootcamps
//
//  Created by Allen Czerwinski on 2/19/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import MapKit

class BootcampAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}