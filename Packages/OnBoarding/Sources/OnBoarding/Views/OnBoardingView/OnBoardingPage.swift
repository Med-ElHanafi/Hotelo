//
//  OnBoardingPage.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 03/12/2024.
//

import SwiftUI
import Shared

enum OnBoardingPage: String, CaseIterable, Identifiable {
    case discover, book, enjoy
    
    var id: String {
        rawValue.capitalized
    }
    
    var description: String {
        switch self {
        case .discover:
            "Explore luxurious and comfortable stays from around the world, tailored to your preferences."
        case .book:
            "Effortlessly book your stay with instant confirmations and secure payment options."
        case .enjoy:
            "Enjoy exclusive services like spa treatments, in-room dining, and concierge assistance."
        }
    }
    
    var image: Image {
        switch self {
        case .discover:
            ImageResources.discover
        case .book:
            ImageResources.book
        case .enjoy:
            ImageResources.enjoy
        }
    }
}
