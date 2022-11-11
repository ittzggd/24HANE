//
//  CalanderView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/8/22.
//

import SwiftUI

struct CalendarView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    
    var cols: [GridItem] = [
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4),
        GridItem(.flexible(), spacing: 4)
    ]
    
    func filledColor (time: Int) -> Color{
        if time % 5 == 1 {
            return (Color.thirdLevel)
        }
        else if(time % 5 == 4){
            return (Color.secondLevel)
        }
        else if(time % 5 == 0 ){
            return (Color.firstLevel)
        }
        return(.white)
    }
    
    private var BGColor = Color.white
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .frame(width: 380, height: 310)
                .offset(x: 0, y: -24)
                .foregroundColor(Color.white)
            VStack(spacing: -40){
                HStack{
                    Text("         November")
                        .font(.system(size: 28, weight: .bold))
                    Text("06")
                        .font(.system(size: 28, weight: .bold))
                    Spacer()
                } .foregroundColor(.white)
                LazyVGrid(columns: cols, spacing: 4){
                    ForEach((1...30), id: \.self){ dayNum in
                        Button(action: { }){
                            Text("\(dayNum)")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(Color.bg_navy)
                                .frame(width: 40, height: 40)
                 
                                .background(filledColor(time: dayNum))
                        }
                    }
                }
                .frame(width: 300, height: 300)
                .padding()
            }
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
