//
//  SwiftUIView.swift
//  
//
//  Created by 有馬大智 on 2022/02/19.
//

import SwiftUI
import UIKit

public extension Color {

    // return true if color is dark
    public var isDark: Bool {
        var (red, green, blue, alpha): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        UIColor(self).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        let luminance: CGFloat = 0.2126 * red + 0.7156 * green + 0.0722 * blue
        return luminance < 0.50
    }

}
