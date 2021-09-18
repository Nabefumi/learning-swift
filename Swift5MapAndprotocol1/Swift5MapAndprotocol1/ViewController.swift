//
//  ViewController.swift
//  Swift5MapAndprotocol1
//
//  Created by Takafumi Watanabe on 2021-09-16.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate, SearchLocationDelegate{

    var addressString = ""
    @IBOutlet var longPress: UILongPressGestureRecognizer!
    @IBOutlet weak var mapView: MKMapView!
    var locManager:CLLocationManager!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
        // Do any additional setup after loading the view.
    }

    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        
        //start Tap
        if sender.state == .began{
            
        }else if sender.state == .ended {
            //finish Tap
            
            //MKMapView
            
            let tapPoint = sender.location(in: view)
            let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
            let lat = center.latitude
            let log = center.longitude
            
            convert(lat: lat, log: log)
            

        }
        
    }
    
    func convert(lat:CLLocationDegrees, log:CLLocationDegrees) {
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: log)
        
        geocoder.reverseGeocodeLocation(location) { (placeMark, error) in
            
            if let placeMark = placeMark{
                if let pm = placeMark.first {
                    if pm.administrativeArea != nil || pm.locality != nil {
                        
                        self.addressString = pm.name! + pm.administrativeArea! + pm.locality!
                        
                    }else{
                        self.addressString = pm.name!
                    }
                    
                    self.addressLabel.text = self.addressString
                    
                }
            }
        }
    }
    
    @IBAction func goToseearchVC(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let nextVC = segue.destination as! NextViewController
            nextVC.deligate = self
        }
    }
    func searchLocation(longitude: String, latitude: String) {
        if longitude.isEmpty != true && latitude.isEmpty != true {
            let longitudeString = longitude
            let latitudeString = latitude
            
            let coordinate = CLLocationCoordinate2DMake(Double(longitudeString)!, Double(latitudeString)!)
            
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            
            let region = MKCoordinateRegion(center: coordinate, span: span)
            
            mapView.setRegion(region, animated: true)
            
            convert(lat:Double(longitudeString)!, log: Double(latitudeString)!)
            
            addressLabel.text = addressString
            
        }else{
            addressLabel.text = "Cannot display"
            
        }
    }
    
}


