//
//  File.swift
//  
//
//  Created by 有馬大智 on 2022/04/11.
//

import Foundation

public extension Task where Success == Never, Failure == Never {
    static func sleep(seconds: UInt64) async throws {
        try await Task.sleep(nanoseconds: seconds * 1_000_000_000)
    }

    static func sleep(milliseconds: UInt64) async throws {
        try await Task.sleep(nanoseconds: milliseconds * 1_000_000)
    }
}
