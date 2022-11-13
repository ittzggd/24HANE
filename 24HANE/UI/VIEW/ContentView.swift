//
//  ContentView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView{
                MainView()
                DetailView()
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
