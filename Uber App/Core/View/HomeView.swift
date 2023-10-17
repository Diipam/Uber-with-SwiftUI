//
//  HomeView.swift
//  Uber App
//
//  Created by Smart Solar Nepal on 16/10/2023.
//

import SwiftUI
import MapKit

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()

    }
}

#Preview {
    HomeView()
}
