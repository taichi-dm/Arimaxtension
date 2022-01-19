//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import Foundation

/// example:
/// let element = array[safe: 3]
public extension Array {
    subscript (safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
