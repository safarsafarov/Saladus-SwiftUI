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
    
    init() {
        // hiding default tab bar...
        UITabBar.appearance().isHidden = true
    }
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
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
            
            HStack(spacing: 35) {
                ForEach(tabs,id: \.self){image in
                    TabButton(image: image, selected: $currentTab, animation: animation)
                }
            }
            .padding(.horizontal,35)
            .padding(.top)
            .padding(.bottom,safeArea?.bottom != 0 ? safeArea?.bottom : 15)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

var tabs = ["house", "book", "suit.heart", "person"]
