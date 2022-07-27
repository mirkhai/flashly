//
//  homePage.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI

struct HomePage: View {
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)
    private var topicName: [String] = ["Information Architecture", "Usability Testing","Gamification 101", "SwiftUI Fundamentals", "Figma Fundamental", "Human Interfaces Guidelines","Information Architecture2", "Usability Testing2", "Gamification 1012", "SwiftUI Fundamentals2", "Figma Fundamental2", "Human Interfaces Guidelines2"]
    private var column = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ZStack()
        {Rectangle()
                .fill(LinearGradient(
                  gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                  startPoint: .init(x: 0.25, y: 0.5),
                  endPoint: .init(x: 0.75, y: 0.5)
                ))
                .frame(width: .infinity, height: 315)
                .position(x: 450, y: 315/2)
                .ignoresSafeArea()
                .offset(x: 0, y: 0)
            VStack() {
                HomeHeader(opacity: 1.0, text:"Choose Your Topic")
                ScrollView{
                    VStack{
                        Spacer()
                            .frame(width: 0, height: 48)
                        LazyVGrid(columns: column, spacing: 5) {
                        ForEach(topicName, id: \.self) { topic in
                        CardStackView(topicName: topic)
                                .padding(.all, 43)
                        }
                    }
                        .padding(.horizontal, 55.0)
                                
                }
                    
                    .background(Color.white)
                   
                }
                .shadow(color: .gray, radius: 45, x: -9, y: -5)
                .edgesIgnoringSafeArea(.all)
//                .offset(x: 0, y: 170)
            }
            
        }
        }
                
        }
//                ScrollView{
//                VStack{
//                    Spacer()
//                        .frame(height:170)
//                ForEach(topicName, id: \.self) { topic in
//                LazyVGrid(columns: column, spacing: 50) {
//                    CardStackView(topicName: topic)
//                    .padding(20)}
//                .background(Color.white)                }
//                }
//                }
//
//            }
//        }
//        .padding(.top, 0.0)
    

        struct HomePage_Previews: PreviewProvider {
                    static var previews: some View {
                        HomePage()

    }
}


            


    
    
                    
        


