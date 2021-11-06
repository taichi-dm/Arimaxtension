//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/07.
//

import Foundation

/**
 Usage:
 let (a, b) = (-42, -4.2)
 print(|a|, |b|) // 42, 4.2
 */

struct AbsoluteValueWrapper<T: Comparable & SignedNumeric> {
    var value: T
    var absoluteValue: T {
        return abs(value)
    }
}
prefix operator |
prefix func | <T: Comparable & SignedNumeric> (value: AbsoluteValueWrapper<T>) -> T {
    return value.absoluteValue
}

postfix operator |
postfix func | <T: Comparable & SignedNumeric> (value: T) -> AbsoluteValueWrapper<T> {
    return AbsoluteValueWrapper(value: value)
}
