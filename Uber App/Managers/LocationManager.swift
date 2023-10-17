//
//  locationManager.swift
//  Uber App
//
//  Created by Smart Solar Nepal on 16/10/2023.
//


import CoreLocation
//helps to import the location of the user

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()

    override init() {
        super.init()
//        we have to initialze it inorder to active the location of the user

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        give the best accuracy of the user
        locationManager.requestWhenInUseAuthorization()
//        request the user to show the location
        locationManager.startUpdatingLocation()
//        tracks the lcoaiton of the user in real time
        
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
}
