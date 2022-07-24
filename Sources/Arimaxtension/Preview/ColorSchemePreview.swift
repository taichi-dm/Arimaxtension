//
//  ColorSchemePreview.swift
//  
//
//  Created by 有馬大智 on 2022/07/25.
//

import SwiftUI

public struct ColorSchemePreview<Content>: View where Content: View {
    let content: () -> Content

    private var colorSchemes: [ColorScheme] {
        [ColorScheme.light, ColorScheme.dark]
    }

    public init(content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        ForEach(colorSchemes, id: \.self) { colorScheme in
            content()
                .preferredColorScheme(colorScheme)
        }
    }
}
