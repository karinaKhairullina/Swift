//
//  LoginView.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

class NavigationObject: ObservableObject {
    @Published var path: NavigationPath = .init()
}

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var badAlert: Bool = false
    @State var showTabBar: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(20)
                Button("Sign in") {
                    if username == "Karina" && password == "karina" {
                        showTabBar.toggle()
                    } else {
                        badAlert = true
                    }
                }
                .padding()
                .foregroundColor(.white)
                .font(.title)
            }
            .alert("\(username) неудачник)", isPresented: $badAlert) {
                Button("Очистить логин") {
                    username = ""
                }
                Button("Очистить пароль") {
                    password = ""
                }
                Button("Очистить всё") {
                    username = ""
                    password = ""
                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $showTabBar) {
            TabBar(username: username, showTabBar: $showTabBar)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



