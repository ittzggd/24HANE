//
//  DetailView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/8/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack{
            Color.bg_navy
            VStack(alignment: .center, spacing: 55){
                HeaderView()
                CalendarView()
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
