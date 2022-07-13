//
//  UserRow.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct UserRow: View {
    
    var friend: Friend
    
    init(friendsImage: Friend) {
        self.friend = friendsImage
    }
    
    var body: some View {
        HStack(alignment: .center) {
            CircleImage(image: friend)
                .padding()
            Text(friend.firstName + " " + friend.lastName)
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(friendsImage: friends[0])
    }
}
