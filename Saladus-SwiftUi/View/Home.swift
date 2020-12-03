//
//  Home.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/12/3.
//

import SwiftUI

struct Home: View {
    var animation: Namespace.ID
    var white = Color.white.opacity(0.85)
    var body: some View {
        
        VStack {
            
            ZStack{
                HStack{
                    
                    Button(action: {}) {
                        Image(systemName: "rectangle.grid.2x2")
                            .font(.title2)
                            .foregroundColor(white)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(white)
                    }
                }
                Text("Saladus")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding([.horizontal, .bottom])
            .padding(.top,10)
            
            HStack {
                Text("Special Offers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(white)
                
                Spacer()
            }
            .padding()
        }
    }
}
