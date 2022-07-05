//
//  GroupRow.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 05.07.2022.
//

import SwiftUI

struct GroupRow: View {
    
    var group: GroupModel
    
    init(groupsImage: GroupModel) {
        self.group = groupsImage
    }
    
    var body: some View {
        HStack(alignment: .center) {
            RectangleImage(image: group)
                .padding()
            Text(group.name)
        }
    }
}

struct GroupRow_Previews: PreviewProvider {
    static var previews: some View {
        GroupRow(groupsImage: groups[0])
    }
}
