//
//  CloudView.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/18/24.
//

import SwiftUI

struct TextView: View {
    @Binding var text: String
    @Binding var showInput: Bool
    
    var body: some View {
        ZStack {
            TextEditor(text: $text)
                .padding()
            VStack {
                Spacer()
                Button(action: {
                    showInput = false
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.choiceblue)
                        .frame(width: 80, height: 30)
                        .overlay(Text("닫기").foregroundStyle(.white))
                        .padding()
                })
            }
        }
    }
}
struct CloudView: View {
    @State private var showInput: Bool = false
    @State private var text: String = ""
    
    var index: Int
    var body: some View {
            Button(action: {
                if !showInput {
                    showInput = true
                } else {
                    showInput = false
                }
            }, label: {
                Image("small")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
            })
            .padding(20)
            .sheet(isPresented: $showInput, content: {
                TextView(text: $text, showInput: $showInput)
            })
    }
}
