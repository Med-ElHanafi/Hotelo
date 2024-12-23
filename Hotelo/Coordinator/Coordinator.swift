//
//  Coordinator.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI

public enum Page: String, Identifiable {
    case onBoarding
    case explore
    
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
            OnBoardingView()
            
        case .explore:
            ExploreView()
        }
    }
}
