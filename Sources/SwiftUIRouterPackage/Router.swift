//
//  File.swift
//  SwiftUIRouterPackage
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

@MainActor
public final class Router: ObservableObject {
    @Published public var path: [IdentifiedView] = []
    @Published public var sheet: IdentifiedView?

    public init() {}

    public func push<V: View>(_ view: V) {
        path.append(IdentifiedView(view: AnyView(view)))
    }

    public func pop() {
        _ = path.popLast()
    }

    public func presentSheet<V: View>(_ view: V) {
        sheet = IdentifiedView(view: AnyView(view))
    }

    public func dismissSheet() {
        sheet = nil
    }
}
