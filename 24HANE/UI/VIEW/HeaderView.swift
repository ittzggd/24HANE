//
//  HeaderView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/7/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            HStack{
                Image("42logo")
                Text("24Hours Are Not Enough")
                    .font(.system(size:18, weight: .heavy))
                    .foregroundColor(Color.white)

                Spacer()
                Button{
                    print("Reload")
                } label:{
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color.white)
                    //    .resizable()
                        .scaledToFit()
                }
                Spacer()
            }.background(Color.bg_navy)
//            Divider()
//                .background(Color.white)
         //       .frame(height:3)
            Text("")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}

