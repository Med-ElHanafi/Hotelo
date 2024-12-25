//
//  CircularButton.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI

struct CircularButton: ButtonStyle {
    var color: Color?
    var backgroundColor: Color?
    var radius: CGFloat?
    
    private var defaultRadius: CGFloat {
        radius ?? 60
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .imageScale(.large)
            .frame(width: defaultRadius, height: defaultRadius)
            .background(backgroundColor ?? Color(.secondary))
            .clipShape(Circle())
            .foregroundStyle(color ?? .white)
    }
}

public extension Button {
    func circularButton(
        color: Color? = nil,
        backgroundColor: Color? = nil,
        radius: CGFloat? = nil
    ) -> some View {
        self.buttonStyle(
            CircularButton(
                color: color,
                backgroundColor: backgroundColor,
                radius: radius
            )
        )
    }
}
