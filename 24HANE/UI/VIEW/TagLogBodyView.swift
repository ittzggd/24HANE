//
//  TagLogBodyView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import SwiftUI

struct TagLogBodyView: View {
    let inTime: String
    let outTime: String
    let durationTime: String

    var body: some View {
        HStack {
            Text(inTime)
                .frame(maxWidth: .infinity)
            Text(outTime)
                .frame(maxWidth: .infinity)
            Text(durationTime)
                .frame(maxWidth: .infinity)
        }
    }
}

struct TagLogBodyView_Previews: PreviewProvider {
    static var previews: some View {
        TagLogBodyView(inTime: "17:27:18", outTime: "11:27:18", durationTime: "06:00:00").previewLayout(.sizeThatFits)
    }
}
