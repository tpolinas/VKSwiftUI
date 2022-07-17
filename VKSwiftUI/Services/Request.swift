//
//  Request.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 16.07.2022.
//

import Foundation

enum requestType {
    case friends
    case groups
    case photos
    case searchGroups
    case feed
}

protocol RequestService {
    associatedtype Element
    func fetch(
        type: requestType,
        str: String?, id: Int?,
        completion: @escaping (Swift.Result<Element, Error>) -> Void
    )
}
