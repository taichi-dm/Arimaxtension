//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import UIKit

public extension UIApplication {
    func hideKeyboard() {
        DispatchQueue.main.async {
            self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

