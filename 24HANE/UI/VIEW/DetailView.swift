//
//  DetailView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/8/22.
//

import SwiftUI

private let testData =
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
//                CalanderView()
                Spacer()
                TagLogView(sampleData: testData)
                    .padding()
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
