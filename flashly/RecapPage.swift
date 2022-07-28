//
//  RecapPage.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 28/07/22.
//

import SwiftUI

struct RecapPage: View {
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)
    private var topicName: [String] = ["SwiftUI Fundamentals", "Human Interfaces Guidelines", "Usability Testing", "App Business"]
    private var finishedTopicName: [String] = ["Information Architecture", "Usability Testing","Gamification 101", "SwiftUI Fundamentals", "Figma Fundamental", "Human Interfaces Guidelines","Information Architecture2", "Usability Testing2", "Gamification 1012", "SwiftUI Fundamentals2", "Figma Fundamental2", "Human Interfaces Guidelines2"]
    private var column = [GridItem(.flexible()), GridItem(.flexible())]
    private var row = [GridItem(.flexible())]
        var body: some View {
            ZStack()
            {Rectangle()
                    .fill(LinearGradient(
                      gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                      startPoint: .init(x: 0.25, y: 0.5),
                      endPoint: .init(x: 0.75, y: 0.5)
                    ))
                    .frame(width: .infinity, height: .infinity)
                    .ignoresSafeArea()
                    .offset(x: 0, y: 0)
                VStack(){
                    HomeHeader(opacity: 1.0, text:"Recap", icon: "plus")
                Spacer()
                .frame(height:36)
                    ZStack{
                            Rectangle()
                                .frame(width: .infinity, height: 1037)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 45, x: -9, y: -5)
                                .edgesIgnoringSafeArea(.all)
                                .offset(y:20)
                            Spacer()
                            .frame(height: 121)
                            VStack{
                                Spacer()
                                    .frame(height:85)
                                Text("Need To Review")
                                    .fontWeight(.bold)
                                    .frame(width: 704, height: 30, alignment: .leading)
                                    .font(.custom("Plus Jakarta Sans", size: 24))
                                    .foregroundColor(.black)
                                ScrollView (.horizontal, showsIndicators: false){
                                    HStack{
                                        Spacer()
                                            .frame(width: 56)
                                    VStack{
                            Spacer()
                                .frame(width: 0, height: 50)
                            LazyHGrid(rows: row, spacing: 5) {
                            ForEach(topicName, id: \.self) { topic in
                                CardStackView(topicName: topic, finishedTopicName: topic, opacityTopic: 1.0, opacityFinish: 0.0, frontColor: Color( "FlashlyYellowAccent"), stackColor: Color("AccentColor"))
                                    .padding(.all, 12)
                            }
                            }
                            .frame(width: .infinity, height: 230)
                                    }
                                }
                                }
                                
                                    VStack{
                                Spacer()
                                .frame(width: 0, height: 90)
                                        Text("Finished")
                                            .fontWeight(.bold)
                                            .frame(width: 704, height: 30, alignment: .leading)
                                            .font(.custom("Plus Jakarta Sans", size: 24))
                                            .foregroundColor(.black)
                                        Spacer()
                                            .frame(width: 0, height: 48)
                                        ScrollView(.vertical) {
                                        LazyVGrid(columns: column, spacing: 5) {
                                        ForEach(finishedTopicName, id: \.self) { finishedTopic in
                                            CardStackView(topicName: finishedTopic, finishedTopicName: finishedTopic, opacityTopic: 0.0, opacityFinish: 1.0, frontColor: Color( "AccentColor"), stackColor: Color("FlashlyYellowDarker"))
                                                .padding(.all, 43)
                        }
                                        }
                                    }
                            .padding(.horizontal, 55.0)
                                    }
                    }
                        }
                    }
                       
                    }
                    .edgesIgnoringSafeArea(.all)
    //                .offset(x: 0, y: 170)
                }
            }
struct RecapPage_Previews: PreviewProvider {
    static var previews: some View {
        RecapPage()
    }
}

