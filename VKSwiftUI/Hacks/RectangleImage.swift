//
//  RoundedSquareImage.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct RectangleImage: View {
    
    var image: GroupModel
    
    var body: some View {
        image.image
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.indigo, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct RoundedSquareImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: groups[0])
    }
}
