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
    func Header(title: String) -> HStack<TupleView<(Text, Spacer)>> {
        return HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(white)
            
            Spacer()
        }
    }
    
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
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    Header(title: "Special Offer")
                    .padding()
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Greek Salad")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            HStack {
                                Text("Only Today")
                                    .foregroundColor(white)
                                Text("10%")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("off")
                                    .foregroundColor(white)
                            }
                            Text("$3.52")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        Spacer(minLength: 5)
                        
                        Image("p2")
                    }
                    .padding([.vertical,.leading])
                    .background(LinearGradient(gradient: .init(colors: [Color("g1"), Color("g2")]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(25)
                    .padding(.vertical,25)
                    .padding(.trailing, 30)
                }
                .padding(.horizontal)
                
                Header(title: "Seasonal Salads")
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(items){item in
                            CardView(item: item)
                        }
                    }
                }
                .padding()
            }
        }
    }
}
