//
//  BackCardView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 28/07/22.
//

import SwiftUI

struct BackCardView: View {
    @State private var offset = CGSize.zero
    @State private var color: Color = Color("FlashlyYellowAccent")
    var answers: String
    @Binding var degree : Double
    var body: some View {

        
        ZStack(alignment: .center) {
            Rectangle()
                .frame(width: 704, height: 409)
                .cornerRadius(20)
                .foregroundColor(color)
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("Answer")
                    .fontWeight(.regular)
                    .frame(width: 654, height: 30, alignment: .leading)
                    .font(.custom("Plus Jakarta Sans", size: 18))
                    .foregroundColor(.black)
                    .lineLimit(2)
                Spacer()
                    .frame(height: 75)
                Text(answers)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 654, height: 150, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 24))
                    .foregroundColor(.black)
                    .lineLimit(4)
                Spacer()
                    .frame(height: 144)
                }
            
            
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        .offset(x: offset.width * 2, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }
                .onEnded { _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                        changeColor(width: offset.width)
                    }
                }
        )
    }
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(answers) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(answers) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-130):
            color = Color("FlashlyRed")
        case 130...500:
            color = Color("FlashlyGreen")
        default:
            color = Color("FlashlyYellowAccent")
        }
    }
    
    
}
//struct BackCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        BackCardView(answers: "Hierarchical, Flat and Content-Driven", degree: $90)
//    }
//}
