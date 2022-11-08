//
//  DailyLog.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import Foundation

// 날짜, 입출력 로그
struct DailyLog {
    let date: Int
    let inOutLog: [InOutLog]
}

extension DailyLog {
    struct InOutLog {
        let id: UUID
        let inTime: CLong
        let outTime: CLong
        let durationTime: CLong
        
        init (id: UUID = UUID(), inTime: CLong, outTime: CLong) {
            self.id = id
            self.inTime = inTime
            self.outTime = outTime
            self.durationTime = outTime - inTime
        }
    }
}
