//
//  OnBoardingPage.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 03/12/2024.
//

import SwiftUI

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
            Image("discover", bundle: .module)
        case .book:
            Image("book", bundle: .module)
        case .enjoy:
            Image("services", bundle: .module)
        }
    }
}
