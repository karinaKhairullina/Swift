//
//  HomeView.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var navigationObject: NavigationObject = .init()
    @State var username: String = ""
    @State var animals: Bool = false
    
    var body: some View {
        NavigationStack(path: $navigationObject.path) {
            ZStack {
                Color.gray.ignoresSafeArea()
                VStack {
                    Text("Привет, \(username)")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, -200)
                    Button("Browse catalog") {
                        navigationObject.path.append(Pages(id: 0))
                    }
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color(.white))
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .font(.title2)
                    
                    Button("Animal images") {
                        animals.toggle()
                    }
                    .sheet(isPresented: $animals) {
                        AnimalCatalog()
                    }
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color(.white))
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .navigationDestination(for: Pages.self) { page in
                BrowseCatalog(navigationObject: navigationObject, pageNum: page.id)
            }
        }
    }
}






