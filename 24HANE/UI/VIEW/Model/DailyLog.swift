//
//  DailyLog.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import Foundation

// 날짜, 입출력 로그
struct DailyLog: Identifiable, Codable {
    let id: UUID
    let date: Int
    var inOutLog: [InOutLog]
    
    init(id: UUID = UUID(), date: Int, inOutLog: [InOutLog]) {
        self.id = id
        self.date = date
        self.inOutLog = inOutLog
    }
}

extension DailyLog {
    struct InOutLog: Identifiable, Codable {
        let id: UUID
//        let inTime: CLong
//        let outTime: CLong
//        let durationTime: CLong
        let inTime: String
        let outTime: String
        let durationTime: String
        
        init (id: UUID = UUID(), inTime: String, outTime: String, durationTime: String) {
            self.id = id
            self.inTime = inTime
            self.outTime = outTime
            self.durationTime = durationTime
        }
    }
}
