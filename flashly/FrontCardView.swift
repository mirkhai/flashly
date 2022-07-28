//
//  CardView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI
struct FrontCardView: View {
    @State private var offset = CGSize.zero
    @State private var color: Color = Color("FlashlyYellowAccent")
    var images: String
    var questions: String
    @Binding var degree : Double
    var body: some View {

        
        ZStack {
            Rectangle()
                .frame(width: 704, height: 409)
                .cornerRadius(20)
                .foregroundColor(color)
            VStack {
                Text("Question")
                Text(questions)
                    .fontWeight(.bold)
                    .frame(width: 590, height: 30, alignment: .center)
                    .font(.custom("Plus Jakarta Sans", size: 24))
                    .foregroundColor(.black)
                    .lineLimit(2)
                Image(images)
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
           ) }

    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(questions) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(questions) added")
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




//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrontCardView(image: "imageSample", questions: "Yeay", degree: $90)
//    }
//}

