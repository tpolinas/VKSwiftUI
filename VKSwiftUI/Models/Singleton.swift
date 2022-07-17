//
//  Singleton.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 16.07.2022.
//

import Foundation

final class Singleton {
    
    public var token: String = ""
    public var userID: String = ""
    
    public static let instance = Singleton()
    
    private init() { }
}
