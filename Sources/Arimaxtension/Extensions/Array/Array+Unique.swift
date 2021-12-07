//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import SwiftUI

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "import Algorithm and use Algorithm.unique() instead.")
public extension Array where Element: Equatable {
    /// Returns uniqued array.
    ///
    ///     let fruits = ["apple", "grape", "lemon", "apple", "lemon"]
    ///     let uniqued = fruits.uniqued()
    ///     print(uniqued)
    ///     // Prints ["apple", "grape", "lemon"]
    ///
    /// - Returns: Array that has no duplicated elements.
    ///
    var uniqued: [Element] {
        reduce([Element]()) { result, sequence in
            result.contains(sequence) ? result : result + [sequence]
        }
    }
    
    /// Makes `self` unique.
    mutating func unique() { self = self.uniqued }
}

