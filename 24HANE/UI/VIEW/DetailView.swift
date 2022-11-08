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
            VStack(alignment: .center){
                HeaderView()
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
