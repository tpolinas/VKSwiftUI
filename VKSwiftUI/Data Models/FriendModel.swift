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
    var profileImages: [String]
    var id: Int

    var profilePics: [Image] {
        var pic = [Image]()
        for picture in 0..<profileImages.count {
            pic.append(Image(profileImages[picture]))
        }
        return pic
    }
    
    var image: Image {
        Image(avatarImage)
    }
}

