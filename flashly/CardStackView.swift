//
//  CardStackView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 25/07/22.
//

import SwiftUI

struct CardStackView: View {
    var topicName: String
    var finishedTopicName: String
    var opacityTopic: Double
    var opacityFinish: Double
    var frontColor: Color
    var stackColor: Color
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 326, height: 189)
                .cornerRadius(20)
                .foregroundColor(stackColor)
                .rotationEffect(Angle(degrees: 5))
            Rectangle()
                .frame(width: 326, height: 189)
                .cornerRadius(20)
                .foregroundColor(frontColor)
            Text(topicName)
                .font(.custom("Plus Jakarta Sans", size: 20))
                .fontWeight(.medium)
                .frame(width: 277, height: 138, alignment: .center)
                .opacity(opacityTopic)
            Text(finishedTopicName)
                .font(.custom("Plus Jakarta Sans", size: 20))
                .fontWeight(.medium)
                .frame(width: 277, height: 138, alignment: .center)
                .opacity(opacityFinish)
        }
        
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView(topicName: "Information Architecture", finishedTopicName: "Information Architecture", opacityTopic: 1.0, opacityFinish: 0.0, frontColor: Color("FlashlyYellowAccent"), stackColor: Color("AccentColor"))
    }
}
}
