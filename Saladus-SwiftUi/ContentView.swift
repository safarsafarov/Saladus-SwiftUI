//
//  ContentView.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
