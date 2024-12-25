//
//  City.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI
import Shared

struct City {
    let title: String
    let description: String
    let image: Image
    let distance: Int
    let price: Int
}

extension City {
    static let mock: [City] = [
        .init(
            title: "Bangkok",
            description: "Bangkok, Thailand",
            image: ImageResources.thailand,
            distance: 4534,
            price: 35
        ),
        .init(
            title: "Santorini",
            description: "Santorini, Greece",
            image: ImageResources.santorini,
            distance: 1560,
            price: 30
        ),
        .init(
            title: "Dubai",
            description: "Burj Khalifa Dubai, UAE",
            image: ImageResources.dubai,
            distance: 2200,
            price: 25
        )
    ]
}
