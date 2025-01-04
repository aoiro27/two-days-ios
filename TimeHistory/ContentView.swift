//
//  ContentView.swift
//  TimeHistory
//
//  Created by Yuki Usui on 2025/01/04.
//

import SwiftUI
import SwiftData

struct ContentView: View {


    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(colors: [.purple, .blue],
                                                     startPoint: .top, endPoint: .bottom)
            VStack {
                VStack{
                    HStack{
                        HStack{
                            Image(systemName: "flame.fill")
                            Text("Swiftの勉強")
                        }.foregroundStyle(.red)
                        Spacer()
                        Text("2024/1/8 1:51最終")
                        Image(systemName: "chevron.forward")
                    }.padding(.bottom,30)
                    HStack{
                        Text("12時間").font(.title)
                        Spacer()
                    }
                }.padding()
                    .background(Color("backGround"))
                    .cornerRadius(10)
                
                
                VStack{
                    HStack{
                        HStack{
                            Image(systemName: "flame.fill")
                            Text("Swiftの勉強")
                        }.foregroundStyle(.red)
                        Spacer()
                        Text("2024/1/8 1:51最終")
                        Image(systemName: "chevron.forward")
                    }.padding(.bottom,30)
                    HStack{
                        Text("12時間").font(.title)
                        Spacer()
                    }
                }.padding()
                    .background(Color("backGround"))
                    .cornerRadius(10)
                
                VStack{
                    HStack{
                        HStack{
                            Image(systemName: "flame.fill")
                            Text("Swiftの勉強")
                        }.foregroundStyle(.red)
                        Spacer()
                        Text("2024/1/8 1:51最終")
                        Image(systemName: "chevron.forward")
                    }.padding(.bottom,30)
                    HStack{
                        Text("12時間").font(.title)
                        Spacer()
                    }
                }.padding()
                    .background(Color("backGround"))
                    .cornerRadius(10)
                
            }
            .padding(.horizontal)
            .padding(.top)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }

}

#Preview {
    ContentView()
}
