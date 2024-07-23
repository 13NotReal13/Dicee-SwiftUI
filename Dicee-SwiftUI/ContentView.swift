//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(number: 1)
                    DiceView(number: 4)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                }
                .background(.red)
            }
        }
    }
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

#Preview {
    ContentView()
}

