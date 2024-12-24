//
//  Offer.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//


struct Offer {
    let title: String
    let description: String
    let image: String
}

extension Offer {
    static let offers: [Offer] = [
        .init(
            title: "Plan Your Trip",
            description: "Enjoy your stay with us and have fun",
            image: "santorini"
        ),
        .init(
            title: "Plan Your Trip",
            description: "Enjoy your stay with us and have fun",
            image: "dolomite"
        )
    ]
}
