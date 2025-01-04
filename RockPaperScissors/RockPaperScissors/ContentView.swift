//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Yuki Usui on 2025/01/04.
//

import SwiftUI

struct ContentView: View {
    
    let te = [(image:"gu",text:"グー"), (image:"choki",text:"チョキ"), (image:"pa",text:"パー")]
    
    @State
    var rand : Int?
    
    var body: some View {
        VStack {
            Spacer()
            if let rand {
                
                Image(te[rand].image)
                    .resizable()
                    .scaledToFit()
                Text(te[rand].text)
            } else {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            }
            Button(action: {
                self.rand = Int.random(in: 0..<te.count)
            }, label: {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
                    
            }
            )
        }
    }
}

#Preview {
    ContentView()
}
