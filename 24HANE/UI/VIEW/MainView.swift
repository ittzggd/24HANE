//
//  MainView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

struct MainView: View {
    @State private var isCheckIn = true
    
    private var CheckedIn: Color{
        guard isCheckIn == true else {return (Color.checkOutGray)}
        return(Color.checkInGreen)
    }
    
    var body: some View {
        ZStack{
            Color.bg_navy
            VStack(alignment: .center){
                HeaderView()
                Divider()
                    .frame(height: 1.8)
                    .background(Color.white)
                    .offset(y: -5)
                HStack{
                    Text("Intra ID")
                        .foregroundColor(.white)
                        .font(.system(size:28, weight: .semibold, design: .default))
                    Circle()
                        .fill()
                        .frame(width:20, height: 20)
                        .foregroundColor(CheckedIn)

                }
                AchievementView(objectiveH: 80, objectiveM: 10, progressH: 57, progressM: 10)
                    .position(x: 195, y: 190)
                VStack(spacing: 10){
                    AccumulationTimeView(text: "오늘")
                        .position(x: 195, y: 120)
                    AccumulationTimeView(text: "이번달")
                        .position(x: 195, y: 70)
                }
            }
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
