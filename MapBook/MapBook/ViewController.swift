//
//  ViewController.swift
//  MapBook
//
//  Created by Emir Tunalı on 1/17/25.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if mapView == nil {
            print("Hata: mapView bağlantısı yapılmamış.")
        } else {
            mapView.delegate = self
        }
    }
}
