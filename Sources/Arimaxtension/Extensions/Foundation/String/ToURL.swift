//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/07.
//

import Foundation


public extension String {
    
    // Usage: let url = "https://www.apple.com/".url!
    // from: https://qiita.com/tattn/items/ff50e575bc149ecb8e80
    var url: URL? {
        URL(string: self)
    }
}
