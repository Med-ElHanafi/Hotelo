//
//  Coordinator.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI
import OnBoarding
import Explore
import PopularHotels

public enum Page: String, Identifiable {
    case onBoarding
    case explore
    case hotels
    
    public var id: String {
        rawValue
    }
}

enum CoordinatorState {
    case onBoarding
    case explore
}

@Observable public class Coordinator {
    var path = NavigationPath()
    var state = CoordinatorState.onBoarding
    
    func push(page: Page) {
        path.append(page)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func changeState(state: CoordinatorState) {
        self.state = state
    }
    
    @MainActor @ViewBuilder func build(page: Page) -> some View {
        switch page {
        case .onBoarding:
            OnBoardingView {
                self.changeState(state: .explore)
            }
            
        case .explore:
            ExploreView {
                self.push(page: .hotels)
            }
            
        case .hotels:
            PopularHotelsView {
                self.pop()
            }
        }
    }
}
