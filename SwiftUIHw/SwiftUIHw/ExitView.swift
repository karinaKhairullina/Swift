//
//  ExitView.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

struct ExitView: View {
    
    @Binding var showTabBar: Bool
    @State var username: String = ""
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text("Привет, \(username)")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.top, -200)
                Button("Sign out") {
                    showTabBar.toggle()
                }
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color(.white))
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .font(.title2)
            }
        }
    }
}


