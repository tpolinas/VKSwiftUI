//
//  UserPhotoItemView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 09.07.2022.
//

import SwiftUI

struct UserPhotoItemView: View {
    var friend: Friend
    
    var body: some View {
        VStack(alignment: .leading) {
            friend.profilePics[0]
                .resizable()
                .frame(
                    width: 155,
                    height: 155
                )
                .cornerRadius(15)
        }
        .padding(.leading, 15)
    }
}

struct UserPhotoItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserPhotoItemView(friend: friends[0])
    }
}
