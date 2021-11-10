//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/11/11.
//

import SwiftUI

/// Ref: https://qiita.com/chocoyama/items/1cb7040f0e717406a6f4#extension%E3%81%AE%E5%88%A9%E7%94%A8
/// Usage:
///     Image(systemName: "person")
///         .resizable()
///             .frame(width: 100, height: 100)
///             .background(Color.red)
///             .cornerRadius(20, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])

public extension View {
    func cornerRadius(_ radius: CGFloat, maskedCorners: CACornerMask) -> some View {
        self.modifier(PartlyRoundedCornerModifier(cornerRadius: radius,
                                                  maskedCorners: maskedCorners))
    }
}
