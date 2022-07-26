//
//  homePage.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI
struct RoundedCornersShape: Shape {
        let corners: UIRectCorner
        let radius: CGFloat
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }
struct homePage: View {
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)
    private var topicName: [String] = ["Information Architecture", "Usability Testing", "Gamification 101", "SwiftUI Fundamentals", "Figma Fundamental", "Human Interfaces Guidelines"]
    private var column = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)

    var body: some View {
        ZStack{
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
        VStack{
//                ZStack{
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 834, height: 200)
                    HStack{
            Text("Choose your topic!")
                .font(.custom("Plus Jakarta Sans", size: 32))
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
                .padding()
                .frame(width: 500.0, height: 100.0)
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                       }){
                           ZStack{
                               Circle()
                               .frame(width: 40, height: 40)
                               .foregroundColor(.black)
                               Image( systemName:"plus"
                                )
                               .foregroundColor(.white)
                               
                       }
                }
                        Spacer()
                        
                }
            
            
//            ScrollView{
//            LazyVGrid(columns: column, spacing: 0) {
//                ForEach(topicName);, id: \.self) { topic in
//                CardStackView(topicName: topic)
            Spacer()
            Spacer()
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(topicName, id: \.self) { topic in
                  LazyVGrid(columns: column, spacing: 5) {
                    CardStackView(topicName: topic)
                  }
                  .padding()
                }
              }
        }
                }
        }
            
    }
                
        

            
//            LazyVStack {
//                ForEach(topicName, id: \.self) { topic in
//                    CardStackView(topicName: topic)
//                }
//            }
        
//    }
//}

struct homePage_Previews: PreviewProvider {
            static var previews: some View {
                homePage()
    }
}
}
                    
        
