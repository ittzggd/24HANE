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
    @State private var progress = 0.6
    var body: some View {
        VStack{
            CircularProgressView()
                .frame(width: 200, height: 200)
//            ProgressView(value: progress)
//                .progressViewStyle(.circular)
        }
    }
}

struct AchievementView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementView()
    }
}
