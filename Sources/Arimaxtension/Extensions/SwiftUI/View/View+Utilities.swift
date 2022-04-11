//
//  File.swift
//  
//
//  Created by 有馬大智 on 2022/04/11.
//

import SwiftUI

// Ref: https://twitter.com/tobi462/status/1513406944157245441
public extension View {

    #if canImport(UIKit)
    func hideKeyboard() {
        UIApplication.hideKeyboard()
    }
    #endif

    @ViewBuilder
    func when<Content: View>(_ condition: Bool, @ViewBuilder transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }

}
