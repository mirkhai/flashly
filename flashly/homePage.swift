//
//  homePage.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI
struct HomePage: View {
    
    private var topicName: [String] = ["Information Architecture", "Usability Testing", "Gamification 101", "SwiftUI Fundamentals", "Figma Fundamental", "Human Interfaces Guidelines","Information Architecture", "Usability Testing", "Gamification 101", "SwiftUI Fundamentals", "Figma Fundamental", "Human Interfaces Guidelines" ]
    private var column = [GridItem(), GridItem()]

    var body: some View {
            ZStack(alignment: .top) {
            HomeHeader(text:"Choose Your Topic")
            VStack{
            ScrollView(.vertical) {
                VStack{
                    Spacer()
                        .frame(height:170)
                ForEach(topicName, id: \.self) { topic in
                LazyVGrid(columns: column, spacing: 50) {
                    CardStackView(topicName: topic)
                    .padding(20)}
                .background(Color.white)
                }
                
                
                }
            }
            .padding(.top, 0.0)
            }
    
    }
    }

        struct HomePage_Previews: PreviewProvider {
                    static var previews: some View {
                        HomePage()

    }
}

struct HomeHeader: View {
    var text: String
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)
            var body: some View {
                ZStack(alignment: .top) {
                    Rectangle()
                            .fill(LinearGradient(
                            gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                            startPoint: .init(x: 0.25, y: 0.5),
                            endPoint: .init(x: 0.75, y: 0.5)
                            ))
                            .frame(width: 834, height: .infinity)
                            .edgesIgnoringSafeArea(.all)
                    VStack() {
                        Spacer()
                                .frame(height: 83)
                    HStack(alignment: .center, spacing: 40.0) {
                        Spacer()
                            .frame(width: 65)
                        Text(text)
                            .font(.custom("Plus Jakarta Sans", size: 38))
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .frame(width: 650, height: 40, alignment: .leading)
                        Button(action: {}) {
                            GeneralButton(icon: "plus")
                        Spacer()
                                .frame(width: 63)
                        }
                    }
                    }
                .edgesIgnoringSafeArea(.all)
                
                        }
                    }
                }
            


    
    
                    
        

}
