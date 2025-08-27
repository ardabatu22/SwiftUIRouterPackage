//
//  File.swift
//  SwiftUIRouterPackage
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

public struct AppRouter<Content: View>: View {
    @StateObject private var router = Router()
    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        NavigationStack(path: $router.path) {
            content
                .environmentObject(router)
                .navigationDestination(for: IdentifiedView.self) { identified in
                    identified.view
                }
                .sheet(item: $router.sheet) { identified in
                    identified.view
                }
        }
    }
}
