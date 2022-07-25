//
//  CardStackView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI

struct CardStackView: View {
    var topicName: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 326, height: 189)
                .cornerRadius(20)
                .foregroundColor(Color("AccentColor"))
                .rotationEffect(Angle(degrees: 5))
            Rectangle()
                .frame(width: 326, height: 189)
                .cornerRadius(20)
                .foregroundColor(Color("FlashlyYellowAccent"))
            Text(topicName)
                .font(.custom("Plus Jakarta Sans", size: 20))
                .fontWeight(.medium)
                .frame(width: 277, height: 138, alignment: .center)
                
        }
        
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView(topicName: "Information Architecture")
    }
}
}
