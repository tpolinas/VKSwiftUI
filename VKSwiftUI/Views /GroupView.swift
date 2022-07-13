//
//  GroupView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 01.07.2022.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        NavigationView {
            List(groups, id: \.id) { group in
                GroupRow(groupsImage: group)
            }.navigationTitle("Groups")
        }

    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
