//
//  NavigationView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct AppNavigationView: View {
    var body: some View {
        TabView {
            UserView()
                .tabItem {
                    Label("Friends",
                          systemImage: "person.2")
                }
            GroupView()
                .tabItem {
                    Label("Groups",
                          systemImage: "person.3")
                }
            FeedView()
                .tabItem {
                    Label("Feed",
                          systemImage: "newspaper")
                }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationView()
    }
}
