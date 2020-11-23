//
//  TabBar.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/11/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView(selection: $currentTab) {
            Text("Home")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(tabs[0])
                .background(Color("bg"))
        }
    }
}

var tabs = ["house", "book", "suit.heart", "person"]
