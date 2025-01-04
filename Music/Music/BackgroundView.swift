//
//  BackgroundView.swift
//  Music
//
//  Created by Yuki Usui on 2025/01/05.
//

import SwiftUI

struct BackgroundView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}

#Preview {
    BackgroundView(imageName: "background")
}
