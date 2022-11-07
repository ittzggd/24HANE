//
//  AccumulationTimeView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/07.
//

import SwiftUI

struct AccumulationTimeView: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.bg_navy)
            RoundedRectangle(cornerRadius: 15)
                .stroke()
            VStack {
                HStack {
                    Text("\(text) 누적시간:")
                        .font(.system(size: 24))
                    Spacer()
                }
                Spacer()
                Text("12:00:00")
                    .font(.system(size: 48, weight: .bold))
            }
            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 0))
        }
        .fixedSize(horizontal: false, vertical: true)
        .foregroundColor(Color.white)
        .padding()
    }
}

struct AccumulationTimeView_Previews: PreviewProvider {
    static var previews: some View {
        AccumulationTimeView(text: "오늘").previewLayout(.sizeThatFits)
    }
}
