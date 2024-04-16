//
//  ContentView.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/15/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var date = Date()
    @State private var selectedDate = Date()
    
    
    @StateObject var datePick: DatePickData = DatePickData()
    
    var body: some View {
        VStack {
            //Text("\(date)")
            Text("\(date, formatter: datePick.yearFormatter)")
                .font(.caption)
                .padding(5)
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrowtriangle.left.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
                Text("\(date, formatter: datePick.monthFormatter)월")
                    .font(.largeTitle)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(1..<Calendar.current.range(of: .day, in: .month, for: date)!.count + 1) { d in
                        Button(action: {
                        }, label: {
                            Text("\(d)")
                                .frame(width:45, height: 45)
                                .background(.dayblue)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })
                        .padding(2)
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
