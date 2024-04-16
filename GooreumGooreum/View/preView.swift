//
//  preView.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/17/24.
//

import SwiftUI

struct preView: View {
    var body: some View {
        VStack {
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("들어가기")
                    .frame(width:100, height:50)
                    .foregroundStyle(.black)
            })
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
        .frame(width: 500, height:500)
        .background(.choiceblue)
    }
}

#Preview {
    preView()
}
