//
//  File.swift
//  
//
//  Created by Taichi Arima on 2021/11/25.
//

import XCTest
@testable import Arimaxtension

final class Array_UniqueTests: XCTestCase {
    func testUnique() throws {
        let hoge = ["apple", "grape", "lemon", "apple", "lemon"].uniqued
        let fuga = ["apple", "grape", "lemon"]
        XCTAssertEqual(hoge, fuga)
    }
}
