//
//  SpidyRest.swift
//  m4rcusiOS1101rebuild
//
//  Created by User03 on 2021/10/20.
//

import Foundation
import SwiftUI
struct SpidyRest: Shape{
    func path(in rect: CGRect) -> Path {
        //補齊缺少的pattern
        Path { path in
            //這裡是畫最上端的web形狀
            path.move(to: CGPoint(x: rect.width*1/24, y: rect.height*9/32))
            path.addQuadCurve(to: CGPoint(x: rect.width*1/2, y: rect.height*15/320), control: CGPoint(x: rect.width*11/24, y: rect.height*5/16))
            path.addQuadCurve(to:CGPoint(x: rect.width*23/24, y: rect.height*9/32),control:CGPoint(x: rect.width*2/3, y: rect.height*1/4))
            //頭頂第一條垂直線
            path.move(to:CGPoint(x: rect.width*1/2, y: rect.height*1/16))
            path.addLine(to:CGPoint(x: rect.width*1/2, y: rect.height*19/32))
            //順時針第一條
            path.move(to:CGPoint(x: rect.width*23/24, y: rect.height*9/32))
            path.addQuadCurve(to:CGPoint(x: rect.width*13/24, y: rect.height*19/32),control:CGPoint(x: rect.width*7/8, y: rect.height*17/32))
            //bug *fixed
            path.move(to:CGPoint(x: rect.width*13/24, y: rect.height*5/8))
            path.addQuadCurve(to:CGPoint(x: rect.width*23/24, y: rect.height*11/16),control:CGPoint(x: rect.width*2/3, y: rect.height*21/32))
            
            path.move(to:CGPoint(x: rect.width*125/240, y:rect.height*21/32))
            path.addQuadCurve(to:CGPoint(x: rect.width*165/240, y: rect.height),control:CGPoint(x: rect.width*13/24, y: rect.height*21/32))
            
            path.move(to:CGPoint(x: rect.width*115/240, y: rect.height*21/32))
            path.addQuadCurve(to:CGPoint(x: rect.width*7/24, y: rect.height),control:CGPoint(x: rect.width*9/24, y: rect.height*25/32))
            //5
            path.move(to:CGPoint(x: rect.width*11/24, y: rect.height*5/8))
            path.addQuadCurve(to:CGPoint(x: rect.width*5/240, y: rect.height*215/320),control:CGPoint(x: rect.width*1/4, y: rect.height*11/16))
            
            path.move(to:CGPoint(x: rect.width*11/24, y: rect.height*19/32))
            path.addQuadCurve(to:CGPoint(x: rect.width*1/24, y: rect.height*9/32),control:CGPoint(x: rect.width*1/4, y: rect.height*15/32))
        }
    }
}
