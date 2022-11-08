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
    var body: some View {
    VStack{
            circularProgressView()
                .frame(width: 200, height: 200)
//            ProgressView(value: progress)
//                .progressViewStyle(.circular)
        }
    }
}

struct CircularProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBarView()
    }
}
