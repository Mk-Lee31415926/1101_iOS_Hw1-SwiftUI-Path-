//
//  Spidypoly.swift
//  m4rcusiOS1101rebuild
//
//  Created by User03 on 2021/10/19.
//

import Foundation
import SwiftUI
struct Spidypoly: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: rect.width*1/2, y: 0))
            path.addQuadCurve(to: CGPoint(x: rect.width*11/12, y: rect.height*1/5), control: CGPoint(x: rect.width*3/4, y: rect.height*7/30))
            path.addQuadCurve(to: CGPoint(x: rect.width, y: rect.height*17/30), control: CGPoint(x: rect.width*7/8, y:rect.height*11/30))
            path.addQuadCurve(to: CGPoint(x: rect.width*3/4, y: rect.height), control: CGPoint(x: rect.width*17/24, y: rect.height*9/10))
            path.addQuadCurve(to: CGPoint(x: rect.width*1/4, y: rect.height), control: CGPoint(x: rect.width*1/2, y: rect.height*14/15))
            path.addQuadCurve(to: CGPoint(x: 0, y: rect.height*17/30), control: CGPoint(x: rect.width*1/4, y:rect.height*4/5))
            path.addQuadCurve(to: CGPoint(x: rect.width*1/12, y: rect.height*1/5), control: CGPoint(x: rect.width*1/8, y: rect.height*2/5))
            path.addQuadCurve(to: CGPoint(x: rect.width*1/2, y: 0), control: CGPoint(x: rect.width*5/12, y: rect.height*7/30))
            path.closeSubpath()
        }
    }
}
