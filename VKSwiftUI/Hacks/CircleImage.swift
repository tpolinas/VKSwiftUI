//
//  CircleImage.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Friend
    
    var body: some View {
        image.image
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.purple, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: friends[0])
    }
}
