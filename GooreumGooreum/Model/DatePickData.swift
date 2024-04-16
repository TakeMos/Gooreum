//
//  DatePickData.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/16/24.
//

import Foundation
import Combine

class DatePickData: ObservableObject {
    var date = Date()
    
    var yearFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        
        return formatter
    }
    var monthFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "M"
        
        return formatter
    }
    //var currentDate: Date = Date()
    
}
