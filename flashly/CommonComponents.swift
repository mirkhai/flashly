//
//  CommonComponents.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 26/07/22.
//

import Foundation
import SwiftUI

struct GeneralButton: View {
    
    var icon: String
    
    var body: some View {
        Button(action: {}){
        ZStack{
        Circle()
        .frame(width: 40, height: 40)
        .foregroundColor(.black)
         Image( systemName:icon
                                        )
                                       .foregroundColor(.white)
                                       .edgesIgnoringSafeArea(.all)
                               }
                    
            
    }
}
}


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


struct CustomDivider: View {
    var body: some View {
        ZStack() {
        RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40)
                                    .fill(Color(.black))
                                    .frame(width: 834, height: .infinity)
                                    .ignoresSafeArea()
                                    .shadow(color: .black, radius: 45, x: -9, y: -5)
                                    .opacity(0.25)
        RoundedCornersShape(corners: [.topLeft, .topRight], radius: 40)
                                .fill(Color(.white))
                                .frame(width: 834, height: .infinity)
                                .ignoresSafeArea()
                                
        }
    }
}


struct ActionButton: View {
    
    var item: ActionItem
    
    var body: some View {
        VStack(alignment: .center) {
            GeneralButton(icon: item.icon)
            Text(item.text)
                .frame(width: 72)
                .font(.system(size: 12, weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ActionItem: Hashable {
    var icon: String
    var text: String
}


struct YellowButton: View {
    var text: String
    var body: some View {
    Button(action: {})
    {
    ZStack{
    Rectangle()
    .frame(width: 293, height: 64)
    .foregroundColor(Color("AccentColor"))
    .cornerRadius(20)
    Text(text)
    .fontWeight(.semibold)
    .font(.custom("Plus Jakarta Sans", size: 24))
    .foregroundColor(.black)
                           }
    }
    }
}

struct WhiteButton: View {
    var text: String
    var body: some View {
        Button(action: {
            print("Hello button tapped!")
        }) {
            Text(text)
                .fontWeight(.semibold)
                .font(.custom("Plus Jakarta Sans", size: 24))
                .foregroundColor(.black)
                .frame(width: 293, height: 64)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("AccentColor"), lineWidth: 4)
                        
                )
        }

    }
}
//struct FullButton: View {
//    var text: String
//    var icon: String = ""
//
//    var body: some View {
//        if icon.isEmpty {
//            textButton
//        } else {
//            iconButton
//        }
//    }
//
//    var iconButton: some View {
//        Label(text, systemImage: icon)
//            .font(.system(size: 14, weight: .medium, design: .default))
//            .frame(maxWidth:.infinity)
//            .padding()
//            .background(Color.white.opacity(0.05))
//            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
//            .overlay(
//                RoundedRectangle(cornerRadius: 14, style: .continuous)
//                    .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
//            )
//    }
//
//    var textButton: some View {
//        Text(text)
//            .font(.system(size: 14, weight: .medium, design: .default))
//            .frame(maxWidth:.infinity)
//            .padding()
//            .background(Color.white.opacity(0.05))
//            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
//            .overlay(
//                RoundedRectangle(cornerRadius: 14, style: .continuous)
//                    .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
//            )
//    }
//}
