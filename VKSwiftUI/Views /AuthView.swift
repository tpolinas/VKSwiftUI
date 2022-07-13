//
//  AuthView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 07.07.2022.
//

import SwiftUI

struct AuthView: View {
    @State private var showMainScreen = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $showMainScreen)
                NavigationLink(
                    destination: AppNavigationView(),
                    isActive: $showMainScreen
                ) {
                    EmptyView()
                }
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
