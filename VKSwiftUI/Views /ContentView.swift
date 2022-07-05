//
//  ContentView.swift
//  VKSwiftUI
//
//  Created by Polina Tikhomirova on 18.06.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var login = ""
    @State var password = ""
    @State var shouldShowLogo = true
    
    private let keyboardPublisher = Publishers.Merge(
        NotificationCenter
            .default
            .publisher(
                for:
                    UIResponder
                    .keyboardWillShowNotification
            ).map { notification in
                true
            },
        NotificationCenter
            .default
            .publisher(
                for:
                    UIResponder
                    .keyboardWillHideNotification
            ).map { notification in
                false
            }
    ).eraseToAnyPublisher()
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
            }
            ScrollView {
                VStack {
                    if self.shouldShowLogo {
                        Text("VK")
                            .padding(.top, 32)
                            .font(.title)
                    }
                    HStack {
                        Text("Login")
                            .fontWeight(.semibold)
                        Spacer()
                        TextField("Login", text: $login)
                            .frame(maxWidth: 200)
                    }
                    HStack {
                        Text("Password")
                            .fontWeight(.semibold)
                        Spacer()
                        TextField("Password", text: $password)
                            .frame(maxWidth: 200)
                    }
                    Button {
                        print("Login pressed")
                    } label: {
                        Label(
                            "Log in",
                            systemImage: "chevron.right.circle"
                        ).foregroundColor(.black)
                    }
                    .padding(.top, 16)
                    .disabled(self.login.isEmpty || self.password.isEmpty)
                    Spacer()
                }
                .padding([.leading, .trailing], 20)
                .frame(maxWidth: 350)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        .onReceive(
            self.keyboardPublisher
        ) { isKeyboardShow in
            withAnimation(.easeIn(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardShow
            }
        }
    }
}

extension UIApplication {
    func endEditing() {
        self.sendAction(
            #selector(
                UIResponder
                    .resignFirstResponder
            ),
            to: nil,
            from: nil,
            for: nil
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
