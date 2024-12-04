//
//  CurvedTrapeze.swift
//  HoteloUI
//
//  Created by Mohamed El hanafi on 03/12/2024.
//

import SwiftUI

struct CurvedTrapeze: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let trailingHeight = rect.height * 0.4
        let leadingHeight = rect.height * 0.75
        let curveOffset = rect.height/10
        
        let start = CGPoint(
            x: rect.minX,
            y: rect.minY
        )
        path.move(to: start)
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: trailingHeight))
        
        path.addQuadCurve(
            to: CGPoint(
                x: rect.minX,
                y: leadingHeight - curveOffset
            ),
            control: CGPoint(
                x: rect.minX + curveOffset,
                y: leadingHeight
            )
        )
        
        path.addLine(to: start)
        
        return path
    }
}
