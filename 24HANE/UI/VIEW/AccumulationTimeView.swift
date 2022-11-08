//
//  AccumulationTimeView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import SwiftUI

struct AccumulationTimeView: View {
    let text: String
//    @Binding var time: Long

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.bg_navy)
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 2)
            VStack {
                HStack {
                    Text("  \(text) 누적시간:")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                    Spacer()
                }
                Text("12:00:00")
                    .font(.system(size: 30, weight: .bold))
            }
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 0))
        }
        .frame(width: 310, height: 70)
     //   .fixedSize(horizontal: false, vertical: true)
        .foregroundColor(Color.white)
        .padding()
    }
}

struct AccumulationTimeView_Previews: PreviewProvider {
    static var previews: some View {
        AccumulationTimeView(text: "오늘").previewLayout(.sizeThatFits)
    }
}
