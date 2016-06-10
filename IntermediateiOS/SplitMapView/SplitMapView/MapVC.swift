//
//  MapVC.swift
//  SplitMapView
//
//  Created by Allen Czerwinski on 6/9/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        

        // Do any additional setup after loading the view.
    }

}
