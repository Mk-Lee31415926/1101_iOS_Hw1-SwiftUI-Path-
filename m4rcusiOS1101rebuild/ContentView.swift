//
//  ContentView.swift
//  iOS_1101
//
//  Created by User03 on 2021/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-1")
                .resizable()
                .scaledToFill()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            Image("NoWayHome_title")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 160, y: 500)
            //Spider-face
            Path{ path in
                path.move(to: CGPoint(x: 110,y: 70))
                path.addQuadCurve(to: CGPoint(x: 40,y: 200),control :CGPoint(x:40,y:100))
                path.addQuadCurve(to: CGPoint(x: 130,y: 390),control:CGPoint(x:40,y:350))
                path.addQuadCurve(to:CGPoint(x:190,y:390),control:CGPoint(x:160,y:400))
                path.addQuadCurve(to: CGPoint(x: 280,y: 200),control:CGPoint(x:280,y:350))
                path.addQuadCurve(to: CGPoint(x:210,y:70), control: CGPoint(x:280,y:100))
                path.addQuadCurve(to: CGPoint(x:110,y:70),control:CGPoint(x:160,y:50))
                path.closeSubpath()
            }
            .fill(Color(red: 0.7333, green: 0.2118, blue: 0.2667))
            
            //Spider-stroke
            Path{ path in
                path.move(to: CGPoint(x: 110,y: 70))
                path.addQuadCurve(to: CGPoint(x: 40,y: 200),control :CGPoint(x:40,y:100))
                path.addQuadCurve(to: CGPoint(x: 140,y: 390),control:CGPoint(x:40,y:350))
                path.addQuadCurve(to:CGPoint(x:180,y:390),control:CGPoint(x:160,y:400))
                path.addQuadCurve(to: CGPoint(x: 280,y: 200),control:CGPoint(x:280,y:350))
                path.addQuadCurve(to: CGPoint(x:210,y:70), control: CGPoint(x:280,y:100))
                path.addQuadCurve(to: CGPoint(x:110,y:70),control:CGPoint(x:160,y:50))
                path.closeSubpath()
                
            }
            .stroke(lineWidth: 5)
            Group{
            //middle star-like part
            Spidypoly()
                .stroke(lineWidth: 4)
                .frame(width: 20, height: 25)
                .position(x: 160, y: 250)
            Spidypoly()
                .stroke(lineWidth: 4)
                .frame(width: 100, height: 125)
                .position(x: 160, y: 250)
                Spidypoly()
                .stroke(lineWidth: 4)
                .frame(width: 200, height: 250)
                .position(x: 160, y: 250)
            //Lefteye & stroke
            Spidyeye()
            .fill(Color.white)
            .frame(width: 80, height: 100)
            .position(x:100,y:200)
            Spidyeye()
                .stroke(lineWidth: 5)
                .frame(width: 80, height: 100)
                .position(x:100,y:200)
            
            //Righteye & stroke
            Spidyeye()
            .fill(Color.white)
            .frame(width: 80, height: 100)
            .rotation3DEffect(.degrees(180), axis:(x:0,y:1,z:0))
            .position(x:220,y:200)
            Spidyeye()
                .stroke(lineWidth: 5)
                .frame(width: 80, height: 100)
                .rotation3DEffect(.degrees(180), axis:(x:0,y:1,z:0))
                .position(x:220,y:200)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
