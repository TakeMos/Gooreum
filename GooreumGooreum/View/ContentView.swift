//
//  ContentView.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/15/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @StateObject var datePick: DatePickData = DatePickData()
    
    @State private var selectedDate = Date()
    @State private var showView: Bool = false
    var body: some View {
        
        let startDate = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: selectedDate))!
        
        VStack {
            Text(datePick.displayYear(selectedDate))
                .font(.caption)
                .padding(5)
            HStack {
                Button(action: {
                   changeMonth(-1)
                }, label: {
                    Image(systemName: "arrowtriangle.left.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
                Text(datePick.displayMonth(selectedDate) + "월")
                    .font(.largeTitle)
                Button(action: {
                    changeMonth(1)
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.arrow)
                })
            }
            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(0..<dates.count) { index in
//                        VStack {
//                            Text("\(Calendar.current.component(.day, from: dates[index]))")
//                                .frame(width:40, height: 40)
//                        }
//                    }
//                }
                
                //NC1 끝나고 한번 더 공부해보기.
                HStack() {
                    let components = (
                        0..<Calendar.current.range(of: .day, in: .month, for: startDate)!.count)
                        .map {
                            Calendar.current.date(byAdding: .day, value: $0, to: startDate)!
                        }
                    var flag = 0
                    
                    ForEach(components, id: \.self) { date in
                        VStack {
                            Text("\(Calendar.current.component(.day, from: date))")
                                .frame(width: 45, height: 45)
                                .background(Calendar.current.isDate(selectedDate, equalTo: date, toGranularity: .day) ? Color.choiceblue : Color.dayblue)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text(datePick.displayDay(date))
                                .font(.caption)
                                .foregroundStyle(datePick.displayDay(date) == "Sun" ? Color.red : Color.black)
                        }
                        .onTapGesture {
                            selectedDate = date
                            showView = true
                        }
                    }
                }
            }
            .sheet(isPresented: $showView, content: {
                preView()
                    .presentationDetents([
                        .fraction(0.7)
                    ])
            })
            .frame(maxWidth: .infinity)
            .padding(15)
            Spacer()
        }
    }
    
    func changeMonth( _ value: Int) {
        guard let date = Calendar.current.date(byAdding: .month, value: value, to: selectedDate) else { return}
        
        selectedDate = date
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
