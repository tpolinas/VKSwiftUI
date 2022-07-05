//
//  GroupModel.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import Foundation
import SwiftUI

struct GroupModel: Identifiable, Codable {
    var name: String
    var avatarImage: String
    var id: Int
    
    var image: Image {
        Image(avatarImage)
    }
}


