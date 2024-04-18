//
//  Datas.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/16/24.
//

import Foundation
import Combine

class Datas: ObservableObject {
    @Published var check: Int = 0
    
    func changeCheck() -> Int {
        check = 2
        return check
    }
}
