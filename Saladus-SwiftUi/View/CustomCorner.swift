//
//  CustomCorner.swift
//  Saladus-SwiftUi
//
//  Created by Safar Safarov on 2020/12/3.
//

import SwiftUI

struct CustomCorner: Shape {
        
    var corners: UIRectCorner
        
    func path(in rect: CGRect) -> Path {
            
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
            
        return Path(path.cgPath)
    }
}
