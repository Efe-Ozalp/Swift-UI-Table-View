//
//  TableView.swift
//  Swift UI Table View
//
//  Created by Efe Ozalp on 8/28/23.
//

import SwiftUI

struct TableView: View {
    var foodToEat: [food]
    var body: some View {
        List(foodToEat) {
            food in ListRow(eachFood: food)
        }
    }
}

struct ListRow: View {
    var eachFood: food
    var body: some View {
        HStack{
            Text(eachFood.name)
            Spacer()
            Image("burger")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40)
        }
    }
}

struct food: Identifiable {
    var id: Int
    var name: String
}

var myFoods = [
    food(id: 1, name: "Hamburger"),
    food(id: 2, name: "Pizza"),
    food(id: 3, name: "Ramen"),
    food(id: 4, name: "Sandwich"),
    food(id: 5, name: "Taco")
]
struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(foodToEat: myFoods)
    }
}
