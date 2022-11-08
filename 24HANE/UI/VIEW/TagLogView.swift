//
//  TagLogView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import SwiftUI

struct TagLogView: View {
//    @Binding var inOutLog: [DailyLog.InOutLog]
    let sampleData: [[String]]

    var body: some View {
        ZStack {
            List {
                Section(header: TagLogHeaderView()) {
                    ForEach(sampleData, id: \.self) { data in
                        TagLogBodyView(inTime: data[0], outTime: data[1], durationTime: data[2])
                    }
                }
                .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct TagLogView_Previews: PreviewProvider {
    static let testData =
    [
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"],
        ["11:27:18", "17:27:18", "06:00:00"]
    ]
    static var previews: some View {
        TagLogView(sampleData: testData).previewLayout(.sizeThatFits)
    }
}
