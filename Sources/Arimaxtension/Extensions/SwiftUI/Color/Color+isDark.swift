//
//  SwiftUIView.swift
//  
//
//  Created by 有馬大智 on 2022/02/19.
//

import SwiftUI
import UIKit

extension Color {

    var isDark: Bool {
        var (r, g, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        UIColor(self).getRed(&r, green: &g, blue: &b, alpha: &a)
        let lum = 0.2126 * r + 0.7156 * g + 0.0722 * b
        return lum < 0.50
    }

}
