//
//  AchievementView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

struct CircularProgressView: View{
    var body: some View {
        Circle()
            .stroke( // 1
                Color.progressbarblue.opacity(0.5),
                lineWidth: 30
            )
    }
}

struct AchievementView: View {
    @State private var progress = 0.72
    var objectiveH: Int
    var objectiveM: Int
    var progressH: Int
    var progressM: Int
//    // 변경되는 값이지만 
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .frame(width: 310, height: 360)
                .foregroundColor(Color.white)
            VStack{
                CircularProgressBarView(progress: progress)
                    .frame(width: 160, height: 160)
                Text("이번달 성취도")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding(15)
                Text("\(progressH) : \(progressM) / \(objectiveH) : \(objectiveM)")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
            }
        }.background(Color.bg_navy)
    }
}

struct AchievementView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementView(objectiveH: 80, objectiveM: 11, progressH: 57, progressM: 10)
    }
}
