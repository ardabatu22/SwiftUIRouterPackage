//
//  File.swift
//  SwiftUIRouterPackage
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

public struct IdentifiedView: Identifiable, Hashable {
    public let id: UUID
    public let view: AnyView

    public init(id: UUID = UUID(), view: AnyView) {
        self.id = id
        self.view = view
    }

    // Hashable conformance
    public static func == (lhs: IdentifiedView, rhs: IdentifiedView) -> Bool {
        lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
