//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/12/21.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func redacted(showPlaceholder: Bool) -> some View {
        if showPlaceholder {
            self
                .redacted(reason: .placeholder)
                .modifier(EaseInOutAnimation())
        } else {
            self
                .unredacted()
        }
    }
}

fileprivate struct EaseInOutAnimation: ViewModifier {
    @State private var contentOpacity = 1.0
    
    private let easeInOutAnimation: Animation = Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)
    
    func body(content: Content) -> some View {
        content
            .opacity(contentOpacity)
            .onAppear(perform: { withAnimation(easeInOutAnimation) { contentOpacity = 0.3 } })
    }
}

