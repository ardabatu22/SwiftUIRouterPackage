# SwiftUIRouterPackage

A simple, generic, and reusable Router package for SwiftUI 

## Features
-  Push navigation (`NavigationStack`)
-  Sheet presentation
-  Simple API: `router.push(...)`, `router.pop()`, `router.presentSheet(...)`, `router.dismissSheet()`
-  No need for enums — just pass any `View`

## Installation
Add via **Swift Package Manager**:
https://github.com/ardabatu22/SwiftUIRouterPackage

## Versioning
Current stable release: 1.0.2

## Important Notes
- Do **NOT** add another `NavigationStack` inside your detail views.  
  `AppRouter` already manages the `NavigationStack` for you.
  
## Usage

```swift
import SwiftUIRouterPackage

struct ContentView: View {
    var body: some View {
        AppRouter {
            HomeView()
        }
    }
}

struct HomeView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        VStack {
            Button("Go to Profile") {
                router.push(ProfileView())
            }
            Button("Open Settings Sheet") {
                router.presentSheet(SettingsView())
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings Sheet")
    }
}
