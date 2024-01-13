import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            
            TabView{
                AdditionView()
                    .tabItem {
                        Image(systemName: "plus.app")
                        Text("Add")
                    }
                SubtractionView()
                    .tabItem {
                        Image(systemName: "minus.square")
                        Text("Minus")
                    }
                MultiplicationView()
                    .tabItem {
                        Image(systemName: "multiply.square")
                        Text("Multiply")
                    }
                DivisionView()
                    .tabItem {
                        Image(systemName: "divide.square")
                        Text("Divide")
                    }
            }.accentColor(.black)            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
