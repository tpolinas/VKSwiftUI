//
//  NavigationView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct AppNavigationView: View {

    @State private var selectionView = 1

    private var navTitleName = [
        "Friends",
        "Groups",
        "News"
    ]

    var body: some View {
        TabView(
            selection: $selectionView
        ) {
            VStack {
                FriendsView(
                    viewModel: FriendViewModel()
                )
            }.tabItem {
                Image(systemName: "person.2")
                Text("Friends")
            }.tag(1)

            VStack {
                GroupsView(
                    viewModel: GroupViewModel()
                )
            }.tabItem {
                Image(systemName: "person.3")
                Text("Groups")
            }.tag(2)

            VStack {
                FeedView()
            }.tabItem {
                Image(systemName: "newspaper")
                Text("Feed")
            }.tag(3)

        }
        .navigationTitle(
            navTitleName[selectionView - 1]
        )
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationView()
    }
}
