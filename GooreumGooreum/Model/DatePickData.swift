//
//  DatePickData.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/16/24.
//

import Foundation
import Combine

class DatePickData: ObservableObject {
    
    func displayMonth(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("M")
        return dateFormatter.string(from: date)
    }
    
    func displayYear(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("YYYY")
        return dateFormatter.string(from: date)
    }
    func displayDay(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.setLocalizedDateFormatFromTemplate("E")
        return dateFormatter.string(from: date)
    }
//    func changeStart() {
//        startDate = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: selectedDate))!
//    }
    
}
