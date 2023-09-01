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
            Image(eachFood.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
        }
    }
}

struct food: Identifiable {
    var id: Int
    var name: String
    var imageName: String
}

var myFoods = [
    food(id: 1, name: "Hamburger", imageName: "burger"),
    food(id: 2, name: "Pizza", imageName: "pizza"),
    food(id: 3, name: "Ramen", imageName: "ramen"),
    food(id: 4, name: "Sandwich", imageName: "sandwich"),
    food(id: 5, name: "Taco", imageName: "taco"),
    food(id: 6, name: "Fries", imageName: "fry"),
    food(id:7, name: "Wings", imageName: "wing")
]
struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(foodToEat: myFoods)
    }
}
