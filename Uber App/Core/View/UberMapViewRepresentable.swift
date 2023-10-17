//
//  File.swift
//  Uber App
//
//  Created by Smart Solar Nepal on 16/10/2023.
//

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {
    let mapkit = MKMapView()
    let locationManager = LocationManager()


    func makeUIView(context: Context) -> some UIView {
//whenever we call uiviewrepresentable this property helps to initialize and it always return the initialized value
        mapkit.isRotateEnabled = false
        mapkit.showsUserLocation = true
        mapkit.userTrackingMode = .follow

        return mapkit
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
//        hello
    }

}

extension UberMapViewRepresentable {

    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapViewRepresentable
        init ( parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
    }
}
