//
//  File.swift
//  
//
//  Created by 有馬大智 on 2022/04/11.
//

import SwiftUI

// Ref: https://github.com/YusukeHosonuma/SwiftUI-Common/blob/main/Sources/SwiftUICommon/Extension/ViewModifier%2B.swift
public extension ViewModifier {
    #if canImport(AppKit)
    func toggleSidebar() {
        NSApplication.toggleSidebar()
    }
    #endif

    #if canImport(UIKit)
    func hideKeyboard() {
        UIApplication.hideKeyboard()
    }
    #endif
}
