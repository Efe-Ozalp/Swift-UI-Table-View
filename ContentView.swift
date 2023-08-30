import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TableView(foodToEat: myFoods)
                .navigationBarTitle("A List of Foods")
                
        }
    }
}
