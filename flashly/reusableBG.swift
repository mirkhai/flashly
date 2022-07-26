//
//  reusableBG.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 26/07/22.
//

import SwiftUI
//struct RoundedCornersShape: Shape {
//    let corners: UIRectCorner
//    let radius: CGFloat
//    
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect,
//                                byRoundingCorners: corners,
//                                cornerRadii: CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}
struct reusableBG: View {
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)

    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(LinearGradient(
                  gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                  startPoint: .init(x: 0.25, y: 0.5),
                  endPoint: .init(x: 0.75, y: 0.5)
                ))
                .frame(width: 834, height: 315)
                .position(x: 834/2, y: 315/2)
                .ignoresSafeArea()
                .offset(x: 0, y: 0)
            ZStack{
            RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40)
                        .fill(Color(.black))
                        .offset(x: 0, y: 170)
                        .ignoresSafeArea()
                        .shadow(color: .black, radius: 45, x: -9, y: -5)
                        .opacity(0.25)
            RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40)
                .fill(Color(.white))
                .offset(x: 0, y: 170)
                .ignoresSafeArea()
            
            }
        }
    }
}
    
struct reusableBG_Previews: PreviewProvider {
    static var previews: some View {
        reusableBG()
    }
}
