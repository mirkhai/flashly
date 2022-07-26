//
//  SwiftUIView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 26/07/22.
//

import SwiftUI

struct createCard: View {
    struct PrimaryButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(5)
                .foregroundColor(configuration.isPressed ? Color.red.opacity(0.5) : .red)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(configuration.isPressed ? Color.red.opacity(0.5) : .red, lineWidth: 1.5)
                )
         }
    }

    var body: some View {
        VStack(alignment: .leading)
        {
        GeneralButton(icon: "xmark")
        Text("Create Flashcards")
        Text("Topic")
        Text("Information Architecture")
        Text("Front Card")
        ZStack {
        Rectangle()
                    .frame(width: 704, height: 409)
                    .cornerRadius(20)
                    .foregroundColor(Color("FlashlyYellowAccent"))
                VStack {
                    Text("Question")
                    Text("abc")
                        .fontWeight(.bold)
                        .frame(width: 590, height: 30, alignment: .center)
                        .font(.custom("Plus Jakarta Sans", size: 24))
                        .foregroundColor(.black)
                        .lineLimit(2)
                        
                        
                    Image("imageSample")
                    }
                
            }
            
        Text("Back Card")
            ZStack {
            Rectangle()
                        .frame(width: 704, height: 409)
                        .cornerRadius(20)
                        .foregroundColor(Color("FlashlyYellowAccent"))
                    VStack {
                        Text("Question")
                        Text("abc")
                            .fontWeight(.bold)
                            .frame(width: 590, height: 30, alignment: .center)
                            .font(.custom("Plus Jakarta Sans", size: 24))
                            .foregroundColor(.black)
                            .lineLimit(2)
                            
                            
                        Image("imageSample")
                        }
            
                    
                }
            Spacer()
            HStack {
                WhiteButton(text: "Add Another Card")
                    Spacer()
                    .frame(width: 101)
                YellowButton(text: "Finish")
                    
        }
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        createCard()
    
    }
}

}
