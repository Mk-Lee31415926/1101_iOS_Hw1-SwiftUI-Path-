//
//  Spidyface.swift
//  m4rcusiOS1101rebuild
//
//  Created by User03 on 2021/10/20.
//

import Foundation
import SwiftUI
struct Spidyface: Shape{
    func path(in rect: CGRect) -> Path {
        //Spider-face
        Path{ path in
            path.move(to: CGPoint(x: 0,y: rect.height*15/32))
            path.addQuadCurve(to: CGPoint(x: rect.width*5/12,y: rect.height*17/16),control:CGPoint(x:0,y:rect.height*15/16))
            path.addQuadCurve(to:CGPoint(x: rect.width*7/12,y:rect.height*17/16),control:CGPoint(x:rect.width*1/2,y:rect.height*17/16))
            path.addQuadCurve(to: CGPoint(x: rect.width,y: rect.height*15/32),control:CGPoint(x:rect.width,y:rect.height*15/16))
            path.addQuadCurve(to: CGPoint(x: rect.width*17/24,y:rect.height*1/16), control: CGPoint(x:rect.width,y:rect.height*5/32))
            path.addQuadCurve(to: CGPoint(x: rect.width*7/24,y:rect.height*1/16),control:CGPoint(x:rect.width*1/2,y:0))
            path.addQuadCurve(to: CGPoint(x: 0, y: rect.height*15/32), control: CGPoint(x: 0, y: rect.height*5/32))
            path.closeSubpath()
        }
    }
}
