//
//  CircularButton.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 04/12/2024.
//

import SwiftUI

struct CircularButton: ButtonStyle {
    var color: Color?
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .imageScale(.large)
            .frame(width: 60, height: 60)
            .background(Color(.secondary))
            .clipShape(Circle())
            .foregroundStyle(color ?? .white)
    }
}
