import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
          Text("hi")
          ToolbarItem{
              HStack{
                  Button{
                  } label: {
                      Label("reload", SystemImage: "arrow.clockwise")
                  }
              }
          }
          //.padding()
      }
//      .toolbar { // <-
//          Button {
//
//          } label: {
//          Label("reload", systemImage: "arrow.clockwise")
//        }
//      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
