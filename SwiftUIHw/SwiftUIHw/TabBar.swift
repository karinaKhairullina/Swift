//
//  TabBar.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

struct TabBar: View {
    
    @State var username: String = ""
    @Binding var showTabBar: Bool
    
    var body: some View {
        TabView {
            HomeView(username: username).tabItem {
                Label("Home", systemImage: "house")
                    .foregroundColor(.red)
            }
            
            ExitView(showTabBar: $showTabBar, username: username).tabItem {
                Label("Exit", systemImage: "rectangle.portrait.and.arrow.right.fill")
            }
        }
        .accentColor(.white)
    }
}

