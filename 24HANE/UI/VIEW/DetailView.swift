//
//  DetailView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/8/22.
//

import SwiftUI

private let testData: [DailyLog.InOutLog] =
[
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00"),
    DailyLog.InOutLog(inTime: "11:27:18", outTime: "17:27:18", durationTime: "06:00:00")
]

struct DetailView: View {
    var body: some View {
        ZStack{
            Color.bg_navy
            VStack(alignment: .center){
                HeaderView()
                    .offset(y: -45)
                Divider()
                    .frame(height: 1.8)
                    .background(Color.white)
                    .offset(y: -50)
                CalendarView()
                    .offset(y: 7)
                TagLogView(sampleData: testData)
                    .frame(width: 360, height: 250)
                    .offset(y: 10)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
