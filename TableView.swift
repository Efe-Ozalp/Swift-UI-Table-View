//
//  TableView.swift
//  Swift UI Table View
//
//  Created by Efe Ozalp on 8/28/23.
//

import SwiftUI

struct TableView: View {
    var body: some View {
       ListRow()
    }
}

struct ListRow: View {
    var body: some View {
        HStack{
            Text("Food")
            Spacer()
            Image("burger")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40)
        }
    }
}

struct Food: Identifiable {
    var id: Int
    var name: String
}

var myFoods = [
    Food(id: 1, name: "Hamburger"),
    Food(id: 2, name: "Pizza"),
    Food(id: 3, name: "Ramen"),
    Food(id: 4, name: "Sandwich"),
    Food(id: 5, name: "Taco")
]
struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
