//
//  TagLogView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import SwiftUI

struct TagLogView: View {
    //    @Binding var inOutLog: [DailyLog.InOutLog]
    let sampleData: [DailyLog.InOutLog]

    var body: some View {
        VStack (spacing: 0) {
            TagLogHeaderView()
            List {
                    ForEach (sampleData) { index in
                        TagLogBodyView(inTime: index.inTime, outTime: index.outTime, durationTime: index.durationTime)
                    }
                    .listRowBackground(Color.white)
            }
            .listStyle(.plain)
        }
        .foregroundColor(Color.black)
        .font(.system(size: 24))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct TagLogView_Previews: PreviewProvider {
    
    static let testData =
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
    static var previews: some View {
        TagLogView(sampleData: testData)
            .previewLayout(.sizeThatFits)
    }
}
