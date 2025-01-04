//
//  ContentView.swift
//  MyMap
//
//  Created by Yuki Usui on 2025/01/05.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputText = ""
    @State var displaySearchKeyword = ""
    @State var displayMapType: MapType = .standard
    
    var body: some View {
        VStack {
            TextField("Search", text: $inputText)
                .onSubmit{
                    displaySearchKeyword = inputText
                }
                .padding()
            ZStack(alignment: .bottomTrailing) {
                MapView(searchKeyword: displaySearchKeyword, mapType: displayMapType)
                Button{
                    switch displayMapType {
                    case .standard:
                        displayMapType = .satellite
                    case .hybrid:
                        displayMapType = .standard
                    case .satellite:
                        displayMapType = .hybrid
                    }
                } label: {
                    Image(systemName: "map")
                        .resizable()
                        .frame(width: 45, height: 45)
                }
                .padding(.trailing, 20.0)
                .padding(.bottom, 30.0)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
