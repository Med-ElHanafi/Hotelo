//
//  Hotel.swift
//  PopularHotels
//
//  Created by Mohamed El hanafi on 24/12/2024.
//

import SwiftUI
import Shared

struct Hotel {
    let name: String
    let distance: Int
    let price: Int
    let rating: Double
    let image: Image
}

extension Hotel {
    static let hotels: [Hotel] = [
        .init(name: "The Plaza Hotel, New York City", distance: 15, price: 50, rating: 5, image: ImageResources.h1),
        .init(name: "Nagar Valley Hotel Ltd", distance: 200, price: 60, rating: 5, image: ImageResources.h2),
        .init(name: "Aecor Hotel, Paris", distance: 1500, price: 70, rating: 5, image: ImageResources.h3),
        .init(name: "Four seasons Hotel", distance: 130, price: 55, rating: 5, image: ImageResources.h4),
        .init(name: "Sheraton Hotel", distance: 1200, price: 59, rating: 5, image: ImageResources.h5),
        .init(name: "Hilton Hotel", distance: 900, price: 57, rating: 5, image: ImageResources.h6)
    ]
}
