//
//  SplashScreen.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 27/07/22.
//

import SwiftUI

struct SplashScreen: View {
        @State private var isActive = false
        @State private var size = 0.8
    @State private var opacity = 1.0
    static let gradientStart = Color(red: 247 / 255, green: 197 / 255, blue: 61 / 255)
    static let gradientEnd = Color(red: 242.0 / 255, green: 216.0 / 255, blue: 145.0 / 255)
        var body: some View {
            if isActive{
                HomePage()
            } else {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("AccentColor"
                            ))
                        .ignoresSafeArea()
                VStack {
                    VStack {
                        Image("appIconWhite")
                            .resizable()
                            .frame(width: 250, height: 250)
                            Text("Flashly")
                            .font(Font.custom("Plus Jakarta Sans", size: 45))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 0.9)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
            }
            }
        }
    }

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
