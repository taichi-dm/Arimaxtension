//
//  OrientationPreview.swift
//  
//
//  Created by 有馬大智 on 2022/07/25.
//

import SwiftUI

@available(iOS 15.0, *)
public struct OrientationPreview<Content>: View where Content: View {
    public let content: () -> Content

    public init(content: @escaping () -> Content) {
        self.content = content
    }

    private var orientations: [InterfaceOrientation] {
        InterfaceOrientation.allCases
    }

    public var body: some View {
        ForEach(orientations, id: \.self) { orientation in
            content()
                .previewInterfaceOrientation(orientation)
        }
    }
}


@available(iOS 15.0, *)
extension InterfaceOrientation: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self)
    }    
}
