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
            Text("Time to review the topic!")
                    .fontWeight(.regular)
                    .frame(width: 590, height: 30, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 36))
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .padding()
                Spacer()
                    .frame(width: 0, height: 151)
            Text("Information Architecture")
                    .fontWeight(.bold)
                    .font(.custom("Plus Jakarta Sans", size: 60))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(.horizontal, 70.0)
                Spacer()
                    .frame(width: 0, height: 53)
            Text("8 Cards")
                    .fontWeight(.regular)
                    .frame(width: 590, height: 30, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 20))
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .padding()
            Spacer()
                ZStack(alignment: .center){
                    Rectangle()
                        .frame(width: .infinity, height: 302, alignment: .bottom )
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 45, x: -9, y: -5)
                        .edgesIgnoringSafeArea(.all)
                        
                    YellowButton(text: "Start!")
                }
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
