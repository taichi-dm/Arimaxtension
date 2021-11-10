//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/11/11.
//

import SwiftUI

/// Ref: https://qiita.com/chocoyama/items/1cb7040f0e717406a6f4#%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0modifier

public struct PartlyRoundedCornerModifier: ViewModifier {
    let cornerRadius: CGFloat
    let maskedCorners: CACornerMask

    public func body(content: Content) -> some View {
        content.mask(PartlyRoundedCornerView(cornerRadius: self.cornerRadius,
                                             maskedCorners: self.maskedCorners))}
}
