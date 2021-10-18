//
//  Spidyeye.swift
//  iOS_1101
//
//  Created by User03 on 2021/10/13.
//

import Foundation
import SwiftUI
struct Spidyeye: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x:0,y:0))
            path.addQuadCurve(to: CGPoint(x:rect.width*1/2,y:rect.height), control: CGPoint(x: rect.width*1/8,y: rect.height*7/8))
            path.addQuadCurve(to: CGPoint(x: rect.width,y: rect.height*3/4), control: CGPoint(x:rect.width*7/8,y:rect.height*9/8))
            path.addQuadCurve(to: CGPoint(x:0,y:0), control: CGPoint(x:rect.width*7/8,y:rect.height*1/4))
            path.closeSubpath()
        }
    }
}
