//
//  MapAppBootcampApp.swift
//  MapAppBootcamp
//
//  Created by Дмитрий Спичаков on 04.07.2022.
//

import SwiftUI

@main
struct MapAppBootcampApp: App {
    
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
