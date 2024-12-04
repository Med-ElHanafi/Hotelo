//
//  CoordinatorView.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI

public struct CoordinatorView: View {
    @State public var coordinator = Coordinator()
    
    public init() {
        self.coordinator = coordinator
    }
    
    public var body: some View {
        Group {
            switch coordinator.state {
            case .onBoarding:
                coordinator.build(page: .onBoarding)
            case .explore:
                NavigationStack(path: $coordinator.path) {
                    coordinator.build(page: .explore)
                        .navigationDestination(for: Page.self) { page in
                            coordinator.build(page: page)
                        }
                }
            }
        }
        .environment(coordinator)
    }
}
