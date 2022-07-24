//
//  BoolPreview.swift
//  
//
//  Created by 有馬大智 on 2022/07/25.
//

import SwiftUI

/// Ref: https://qiita.com/shtnkgm/items/6f32eba5c9955cc055a7
public struct BoolPreview<Content>: View where Content: View {
    let content: (Bool) -> Content

    public init(content: @escaping (Bool) -> Content) {
        self.content = content
    }

    public var body: some View {
        ForEach([true, false], id: \.self) { boolValue in
            content(boolValue)
        }
    }
}
