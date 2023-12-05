//
//  Ring.swift
//  InstaGym MinhasTelas
//
//  Created by Paulo Filipe Moreira da Silva on 13/11/23.
//
//  All credits to this guy: https://www.youtube.com/watch?v=ibyXsYdfcoA
//

import SwiftUI

struct Ring: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RingShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
                
                RingShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(backgroundColor)
            }
        }
    }
}
