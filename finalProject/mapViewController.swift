//
//  mapViewController.swift
//  finalProject
//
//  Created by scholar on 8/4/22.
//

import UIKit
import MapKit


class mapViewController: UIViewController {

    
       @IBOutlet weak var mapView: MKMapView!
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           let annotation = MKPointAnnotation()
           annotation.coordinate = CLLocationCoordinate2D(latitude: 33.860336, longitude: -118.153018)
           annotation.title = "AMVETS"
           annotation.subtitle = "Thrift Store"
           mapView.addAnnotation(annotation)
           
           
           let annotation2 = MKPointAnnotation()
           annotation2.coordinate = CLLocationCoordinate2D(latitude: 33.771695, longitude: -118.166598)
           annotation2.title = "Assistance League"
           annotation2.subtitle = "Thrift Store"
           mapView.addAnnotation(annotation2)
           
           let annotation3 = MKPointAnnotation()
           annotation3.coordinate = CLLocationCoordinate2D(latitude: 33.781383, longitude: -118.153715)
           annotation3.title = "Beacon House"
           annotation3.subtitle = "Thrift Store"
           mapView.addAnnotation(annotation3)
           
           let annotation4 = MKPointAnnotation()
           annotation4.coordinate = CLLocationCoordinate2D(latitude: 33.789789, longitude: -118.159383)
           annotation4.title = "Society of St. Vincent de Paul"
           annotation4.subtitle = "Thrift Store"
           mapView.addAnnotation(annotation4)
           
           let annotation5 = MKPointAnnotation()
           annotation5.coordinate = CLLocationCoordinate2D(latitude: 33.781522, longitude: -118.152349)
           annotation5.title = "Goodwill"
           annotation5.subtitle = "Thrift Store"
           mapView.addAnnotation(annotation5)
           
           
           let region = MKCoordinateRegion(center: annotation3.coordinate, latitudinalMeters: 13000, longitudinalMeters: 13000)
           
           
           mapView?.setRegion(region, animated: true)
           
    
       }
    
    
    

        
        // Do any additional setup after loading the view.
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
