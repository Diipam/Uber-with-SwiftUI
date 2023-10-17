//
//  File.swift
//  Uber App
//
//  Created by Smart Solar Nepal on 16/10/2023.
//

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {

    let mapView = MKMapView()
    let locationManager = LocationManager()  


    func makeUIView(context: Context) -> some UIView {
//whenever we call uiviewrepresentable this property helps to initialize and it always return the initialized value

        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow

        return mapView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
//        hello
    }

    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension UberMapViewRepresentable {

    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapViewRepresentable

        init (parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }

        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,
                                               longitude: userLocation.coordinate.longitude)
                ,
                span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

            parent.mapView.setRegion(region, animated: true)
        }
    }
}
