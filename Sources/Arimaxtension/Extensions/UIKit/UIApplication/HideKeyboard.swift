//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

#if canImport(UIKit)
import UIKit

public extension UIApplication {
    static func hideKeyboard() {
        DispatchQueue.main.async {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}
#endif
