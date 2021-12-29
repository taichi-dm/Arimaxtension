//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/12/30.
//

import SwiftUI

// ref: https://scrapbox.io/youandtaichi/Clubhouseのスーパー楕円をSwiftUIで作る

public struct SuperEllipse: View {
    public var body: some View {
        Image(systemName: "moon")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color.yellow)
            .clipShape(SuperEllipseShape(rate: 0.75))
    }
}

public struct SuperEllipseShape: Shape {
    let rate: CGFloat
    public func path(in rect: CGRect) -> Path {
        
        let handleX: CGFloat = rect.size.width * rate / 2
        let handleY: CGFloat = rect.size.height * rate / 2
        
        let left = CGPoint(x: rect.minX, y: rect.midY)
        let top = CGPoint(x: rect.midX, y: rect.minY)
        let right = CGPoint(x: rect.maxX, y: rect.midY)
        let bottom = CGPoint(x: rect.midX, y: rect.maxY)
        
        var path = Path()
        
        path.move(to: left)
        path.addCurve(to: top,
                      control1: CGPoint(x: left.x, y: left.y - handleY),
                      control2: CGPoint(x: top.x - handleX, y: top.y))
        
        path.addCurve(
            to: right,
            control1: CGPoint(x: top.x + handleX, y: top.y),
            control2: CGPoint(x: right.x, y: right.y - handleY)
        )
        path.addCurve(
            to: bottom,
            control1: CGPoint(x: right.x, y: right.y + handleY),
            control2: CGPoint(x: bottom.x + handleX, y: bottom.y)
        )
        path.addCurve(
            to: left,
            control1: CGPoint(x: bottom.x - handleX, y: bottom.y),
            control2: CGPoint(x: left.x, y: left.y + handleY)
        )
        
        return path
    }
}
