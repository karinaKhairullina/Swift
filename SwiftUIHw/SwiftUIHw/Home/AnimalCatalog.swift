//
//  AnimalCatalog.swift
//  SwiftUIHw
//
//  Created by Карина Хайрулина on 21.04.2023.
//

import SwiftUI

struct AnimalCatalog: View {
    
    let imageNames = ["image1", "image2", "image3", "image4"]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        let imageName = imageNames.randomElement()
        VStack {
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            Image(imageName!)
                .resizable()
                .scaledToFit()
        }
    }
}


