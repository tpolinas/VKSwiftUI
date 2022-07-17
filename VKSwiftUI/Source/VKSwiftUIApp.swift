//
//  VKSwiftUIApp.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 18.06.2022.
//

import SwiftUI

@main
struct VKWithSwiftUIApp: App {
    
    @State private var showUserScreens = false
    
    var body: some Scene {
        WindowGroup {
            if showUserScreens {
                AuthView()
            } else {
                VKLoginWebView()
                    .onReceive(
                        NotificationCenter.default.publisher(for: NSNotification.Name("vkTokenSaved"))
                    ) { _ in
                        print()
                        showUserScreens = true
                    }
            }
        }
    }
}

