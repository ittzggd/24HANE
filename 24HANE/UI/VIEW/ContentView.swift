//
//  ContentView.swift
//  24HANE
//
//  Created by Katherine JANG on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    var body: some View {
        ZStack{
            VStack{
                TabView{
                    MainView()
                    DetailView()
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                }
            if isLoading{
                LoadingView()
            }
        }
        .onAppear{startFakeNetworkCall()}
    }
    
    func startFakeNetworkCall(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
