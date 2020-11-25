//
//  TabBar.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/11/22.
//

import SwiftUI

struct TabBar: View {
    @State var currentTab = "house"
    @Namespace var animation
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $currentTab) {
                Text("Home")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[0])
                    .background(Color("bg"))
                
                Text("Booking")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[1])
                    .background(Color("bg"))
                
                Text("Favourites")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[2])
                    .background(Color("bg"))
                
                Text("Settings")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[3])
                    .background(Color("bg"))
            }
            
            HStack(spacing: 0) {
                ForEach(tabs,id: \.self){imnage in
                    TabButton(image: image, selected: $currentTab, animation: animation)
                    
                    if image != tabs.last{Spacer(minLength: 0)}
                }
            }
            // Csuom Tab Bar...
            
            
        }
    }
}

var tabs = ["house", "book", "suit.heart", "person"]
