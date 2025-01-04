//
//  ContentView.swift
//  Music
//
//  Created by Yuki Usui on 2025/01/04.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            BackgroundView(imageName: "background")
            HStack{
                Button(
                    action: {
                        soundPlayer.play(name: "cymbalSound")
                    },
                    label: {
                        Image("cymbal")
                    }
                )
                Button {
                    soundPlayer.play(name: "guitarSound")
                }
                label: { Image("guitar")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
