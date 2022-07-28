//
//  FinishPage.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 27/07/22.
//

import SwiftUI

struct FinishPage: View {
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
                    .frame(width: .infinity, height: .infinity)
                    .ignoresSafeArea()
                    .offset(x: 0, y: 0)
            
            VStack{
                Spacer()
                    .frame(height: 188)
                Text("Yay, you finished the topic!🎉")
                    .fontWeight(.regular)
                    .frame(width: 590, height: 30, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 36))
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .padding()
                Spacer()
                    .frame(width: 0, height: 65)
            Text("Information Architecture")
                    .fontWeight(.bold)
                    .frame(width: 481, height: 200, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 60))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            Text("8 Cards")
                    .fontWeight(.regular)
                    .frame(width: 590, height: 30, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 20))
                    .foregroundColor(.black)
                    .lineLimit(2)
            Spacer()
                HStack (alignment: .center) {
                    Spacer()
                    ZStack(alignment: .center){
                    Rectangle()
                        .fill(Color("FlashlyGreen"))
                        .frame(width: 176, height: 190)
                        .ignoresSafeArea()
                        .offset(x: 0, y: 0)
                        .cornerRadius(21)
                        .shadow(color: .black, radius:5, x: -9, y: -5)
                        .opacity(0.25)
                        Rectangle()
                        .fill(Color("FlashlyGreen"))
                        .frame(width: 176, height: 190)
                        .ignoresSafeArea()
                        .offset(x: 0, y: 0)
                        .cornerRadius(21)
                        Text("8")
                            .font(.custom("Plus Jakarta Sans", size: 100))
                            .fontWeight(.heavy)
                            .frame(width: 176)
                    }
                        Spacer()
                        .frame(width: 66)
                    ZStack(alignment: .center){
                        Rectangle()
                        .fill(Color("FlashlyGreen"))
                        .frame(width: 176, height: 190)
                        .ignoresSafeArea()
                        .offset(x: 0, y: 0)
                        .cornerRadius(21)
                        .shadow(color: .black, radius:5, x: -9, y: -5)
                        .opacity(0.25)
                    Rectangle()
                        .fill(Color("FlashlyRed"))
                        .frame(width: 176, height: 190)
                        .ignoresSafeArea()
                        .offset(x: 0, y: 0)
                        .cornerRadius(21)
                        Text("0")
                            .font(.custom("Plus Jakarta Sans", size: 100))
                            .fontWeight(.heavy)
                            .frame(width: 176)
                }
                
                    Spacer()
                    
                }
                HStack{
                    Spacer()
                       Text("Correct")
                       .font(.custom("Plus Jakarta Sans", size: 20))
                       .fontWeight(.regular)
                       .frame(width: 176)
                    Spacer()
                        .frame(width: 66)
                    Text("Need To Review")
                    .font(.custom("Plus Jakarta Sans", size: 20))
                     .fontWeight(.regular)
                     .frame(width: 176)
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 60)
                ZStack(alignment: .center){
                    Rectangle()
                        .frame(width: .infinity, height: 302)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 45, x: -9, y: -5)
                        .edgesIgnoringSafeArea(.all)
                    .offset(y:20)}
//                twoButton()
                .edgesIgnoringSafeArea(.all)
            }
            
                
        }
    }
struct FinishPage_Previews: PreviewProvider {
    static var previews: some View {
        FinishPage()
    }
}
}
