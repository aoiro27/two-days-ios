//
//  ContentView.swift
//  Timer
//
//  Created by Yuki Usui on 2025/01/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("タイマー画面")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingView()
                    } label: {
                        Text("秒数設定")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
