//
//  MainView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color.bg_navy
                VStack{
                    //toolbarView
                    //achievementview
                    // up to now view
                    // thismonth
                    AccumulationTimeView(text: "오늘")
                    AccumulationTimeView(text: "이번달")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
