//
//  ContentView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 22/07/22.
//
import SwiftUI
struct ContentView: View {
    @State var frontDegree = -90.0
    @State var backDegree = 0.0
    @State var isFlipped = false
    let durationAndDelay : CGFloat = 0.3
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            
                }
            }
        }
        else {
            withAnimation(.linear(duration: durationAndDelay)) {
            frontDegree = -90
                }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
                            }
                        }
                    }
    private var questions: [String] = ["What are the types of navigation?", "Question 2 Here", "Question 3 here", "Question 4 here", "Question 5 Here","Question 6"].reversed()
    private var answers: [String] = ["Hierarchical, Flat, and Content-Driven", "Answer 2 Here", "Answer 3 Here", "Answer 4 here", "Answer 5 here", "Answer 6 here"].reversed()
    private var image: [String] = ["imageSample","imageSample","imageSample","imageSample","imageSample","imageSample"]

    @State private var sliderValue: Double = 0
        private let maxValue: Double = 10
        
    var body: some View {
        VStack {
            Group{
                HomeHeader(opacity: 1.0, text: "Information Architecture", icon: "rectangle.portrait.and.arrow.right.fill")
                Spacer()
                    .frame(height: 45)
//                .foregroundColor(.black)
//                .lineLimit(1)
//                .padding(.leading)
//                .position(x: 300, y: 84)
                Text("4/8")
                    .font(.custom("Plus Jakarta Sans", size: 20))
                    .foregroundColor(.black)
                    .fontWeight(.regular)
            Slider(value: $sliderValue,
                   in: 0...maxValue)
                   .padding(30)
            Spacer()
            }
            HStack{
                Spacer()
            Image(systemName: "x.circle.fill")
                .resizable()
                .frame(width: 40.0, height: 40.0)
                .foregroundColor(Color("FlashlyRed"))
                Spacer()
                    .frame(width: 603)
            Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 40.0, height: 40.0)
                    .foregroundColor(Color("FlashlyGreen"))
                Spacer()
            }
            Spacer()
            ZStack {
                ForEach(answers, id: \.self) { answer in
                    BackCardView(answers: answer, degree: $backDegree)}
                ForEach(questions, id: \.self) { question in
                ForEach(image, id: \.self) {image in
                FrontCardView(images: image, questions: question, degree: $frontDegree)}
                }
                        .onTapGesture {
                            flipCard ()}
                }
                Spacer()
                .frame(height: 113)
            Text("Skip Card")
                .font(.custom("Plus Jakarta Sans", size: 18))
                .foregroundColor(.gray)
            Spacer()
                .frame(height: 113)
            Text ("Tap the card to flip or swipe to mark")
                .fontWeight(.regular)
                .frame(width: 654, height: 30, alignment: .center)
                .font(.custom("Plus Jakarta Sans", size: 18))
                .foregroundColor(.black)
                .lineLimit(2)
            Spacer()
                .frame(height: 155)
            }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
}

