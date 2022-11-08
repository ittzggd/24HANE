//
//  TagLogHeaderView.swift
//  24HANE
//
//  Created by jaewon on 2022/11/08.
//

import SwiftUI

struct TagLogHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("입실")
            Spacer()
            Spacer()
            Text("퇴실")
            Spacer()
            Spacer()
            Text("체류시간")
            Spacer()
        }
        .font(.system(size: 24))
        .foregroundColor(Color.black)
        .background(Color.logTableBackground)
    }
}

struct TagLogHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TagLogHeaderView().previewLayout(.sizeThatFits)
    }
}
