//
//  CircularProgressBarView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

struct circularProgressView: View{
    var body: some View {
        Circle()
            .stroke( // 1
                Color.progressbarblue.opacity(0.5),
                lineWidth: 30
            )
    }
}

struct CircularProgressBarView: View {
    let progress: Double
    var body: some View {
        ZStack{
            Text("\(Int(progress * 100)) %")
                .font(.system(size: 40, weight: .regular, design: .rounded))
                .foregroundColor(Color.white)
            Circle()
                .stroke(
                    Color(UIColor.systemGray3).opacity(0.5),
                    lineWidth: 15
                )
            Circle()
                .trim(from:0, to: progress)
            //user data 맞춰서 to 변경
                .stroke(
                    Color.progressbarblue,
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(270))
        }
    }
}

struct CircularProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBarView(progress: 0.76)
            .frame(width: 200, height: 200)
    }
}
