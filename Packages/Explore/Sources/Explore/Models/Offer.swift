//
//  Offer.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI
import Shared

struct Offer {
    let title: String
    let description: String
    let image: Image
}

extension Offer {
    static let mock: [Offer] = [
        .init(
            title: "Plan Your Trip",
            description: "Enjoy your stay with us and have fun",
            image: ImageResources.santorini
        ),
        .init(
            title: "Plan Your Trip",
            description: "Don't miss the joy and fun",
            image: ImageResources.dolomite
        )
    ]
}
