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
    @StateObject var datePick: DatePickData = DatePickData()
    
    var body: some View {
        VStack {
            Text("\(date, formatter: datePick.yearFormatter)")
            
                .font(.caption)
                .padding(5)
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.left.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
                Text("\(date, formatter: datePick.monthFormatter)월")
                    .font(.largeTitle)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
            }
            DatePicker("날짜선택", selection: $date, displayedComponents: [.date])
                .datePickerStyle(.graphical)   .datePickerStyle(.graphical)
            
            
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
