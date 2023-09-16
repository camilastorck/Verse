//
//  LoadingView.swift
//  Verse
//
//  Created by Camila Storck on 13/09/2023.
//

import SwiftUI

struct ActivityIndicator: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Palette.black.color.opacity(0.2)
                .ignoresSafeArea()
            
            GeometryReader { geo in
                ForEach(0..<5) { index in
                    Group {
                        Circle()
                            .frame(width: geo.size.width / 5, height: geo.size.height / 5)
                            .scaleEffect(calcScale(index: index))
                            .offset(y: calcYOffset(geo))
                    }
                    .foregroundColor(Palette.orange.color)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .rotationEffect(!isAnimating ? .degrees(0) : .degrees(360))
//                    .animation(
//                        .timingCurve(0.5, 0.15 + Double(index) / 5, 0.25, 1, duration: 1.5)
//                        .repeatForever(autoreverses: false))
                }
            }
            .frame(width: 50, height: 50)
            .aspectRatio(1, contentMode: .fit)
            .onAppear {
                isAnimating = true
            }
        }
    }
    
    private func calcScale(index: Int) -> CGFloat {
        return (!isAnimating ? 1 - CGFloat(Float(index)) / 5 : 0.2 + CGFloat(index) / 5)
    }
    
    private func calcYOffset(_ geo: GeometryProxy) -> CGFloat {
        return geo.size.width / 10 - geo.size.height / 2
    }
}
