//
//  TableView.swift
//  Swift UI Table View
//
//  Created by Efe Ozalp on 8/28/23.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct Food: Identifiable {
    var id: Int
    var name: String
}

var myFoods = [
    Food(id: 1, name: "Hamburger"),
    Food(id: 2, name: "Pizza")
]
struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
