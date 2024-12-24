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
        
        setNavigation()
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
    
    private func setNavigation() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color(.primary))
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
}
