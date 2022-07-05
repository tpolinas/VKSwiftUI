//
//  FriendModel.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 01.07.2022.
//

import Foundation
import SwiftUI

struct Friend: Identifiable, Codable {
    let firstName: String
    let lastName: String
    var avatarImage: String
    var id: Int

    var image: Image {
        Image(avatarImage)
    }
}

