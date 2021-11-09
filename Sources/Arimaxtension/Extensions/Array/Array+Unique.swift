//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/09.
//

import Foundation

public extension Array where Element: Hashable {
    
    /// example
    /// let array = ["hello", "world", "hey", "world"]
    /// array.uniqued() -> ["hello", "world", "hey"]
    func uniqued() -> Array {
        
        var hash = [Element : Bool]()
        return reduce([], { (array, element) in
            if hash[element] != nil { return array }
            hash[element] = true
            return array + [element]
        })
    }
    
    
    ///
    /// Makes it unique.
    /// ============================
    mutating func unique() {
        self = self.uniqued()
    }
    
    func removedDuplicate() -> Array {
        uniqued()
    }
}
