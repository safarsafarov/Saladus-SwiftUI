//
//  Item.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/12/5.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var price: String
    var image: String
}

var items = [
    Item(name: "Meat Salad", price: "$6.50", image: "p1"),
    Item(name: "Chicken Salad", price: "$20.60", image: "p3"),
]
