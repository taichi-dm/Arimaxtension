//
//  LocalizedPreview.swift
//  
//
//  Created by 有馬大智 on 2022/07/25.
//

import SwiftUI

public struct LocalizedPreview<Content>: View where Content: View {
    let content: () -> Content

    private var localizations: [Locale] {
        Bundle.main.localizations
            .map(Locale.init)
            .filter { $0.identifier != "base" }
    }

    public init(content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        ForEach(localizations, id: \.identifier) { locale in
            content()
                .environment(\.locale, locale)
        }
    }
}
