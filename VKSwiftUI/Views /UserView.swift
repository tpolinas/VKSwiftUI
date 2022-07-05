//
//  UserView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 23.06.2022.
//

import SwiftUI

struct UserView: View {
    
    var body: some View {
        NavigationView {
            List(friends, id: \.id) { friend in
                UserRow(friendsImage: friend)
            }.navigationTitle("Friends")
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserView()
        }
    }
}
