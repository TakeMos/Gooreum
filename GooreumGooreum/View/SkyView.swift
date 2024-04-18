//
//  Cloud.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/17/24.
//

import Foundation
import SwiftUI

struct SkyView: View {
    
    @State private var cnt: Int = 0
    private var gridItems = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.choiceblue).ignoresSafeArea()
                VStack {
                    NavigationLink {
                        ContentView()
                    } label: {
                        Image(systemName: "sun.max.fill")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.red)
                    }
                    
                    LazyVGrid(columns: gridItems) {
                        ForEach(0..<cnt, id: \.self) { index in
                            CloudView(index: index)
                        }
                    }
                    
                    Spacer()
                    Button(action: {
                        if cnt < 9 {
                            cnt += 1
                            print(cnt)
                        }
                    }, label: {
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .foregroundStyle(.white)
                            .overlay {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:25, height: 25)
                                    .foregroundStyle(.black)
                            }
                    })
                }
                
            }
        }
        .navigationBarBackButtonHidden()
    }
}
