//
//  GradientBackground.swift
//  Explore
//
//  Created by Mohamed El hanafi on 23/12/2024.
//

import SwiftUI

struct GradientBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Capsule()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.black.opacity(0.3), .clear]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .stroke(.white)
            )
    }
}

extension View {
    func gradientBackground() -> some View {
        self.modifier(GradientBackground())
    }
}
