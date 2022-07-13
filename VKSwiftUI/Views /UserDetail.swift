//
//  UserDetail.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 07.07.2022.
//

import SwiftUI

struct UserDetail: View {
    var items: [Friend]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { picture in
                        NavigationLink {
                            UserPhotoItemView(friend: picture)
                        } label: {
                            UserPhotoItemView(friend: picture)
                        }
                    }
                }
            }
            .frame(height: 185)
            .background(Image("background1"))
        }
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var friend = friends

    static var previews: some View {
        UserDetail(
            items: Array(friend)
        )
    }
}
