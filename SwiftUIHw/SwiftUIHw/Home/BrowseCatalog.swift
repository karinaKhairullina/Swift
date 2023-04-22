//
//  BrowseCatalog.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

struct Pages: Identifiable, Hashable {
    let id: Int
}

struct BrowseCatalog: View {
    @ObservedObject var navigationObject: NavigationObject
    let pageNum: Int
    
    var body: some View {
        NavigationStack(path: $navigationObject.path) {
            ZStack {
                Color.gray.ignoresSafeArea()
                VStack {
                    Text("Catalog, page: \(pageNum)")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, -200)
                    Button("Browse catalog") {
                        navigationObject.path.append(Pages(id: pageNum))
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
        .navigationDestination(for: Pages.self) { page in
            BrowseCatalog(navigationObject: navigationObject, pageNum:page.id+1)
        }
    }
}






