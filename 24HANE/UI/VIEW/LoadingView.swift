//
//  LoadingView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/13/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack{
            Color.bg_navy
            Image("42LogoTitle")
                .resizable()
                .frame(width: 370, height: 100)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
