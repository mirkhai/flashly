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
    private var questions: [String] = ["What are the types of navigation?", "Lorem Ipsum", "Dolor sit amet, consectetur adipiscing elit. ", "Testing", "AnotherTest"].reversed()
    private var answers: [String] = ["Answer1 Hellow", "Answer2", "Answer3 Dolor sit amet", "Answer4 Consectetur adipiscing elit.", "Answer5 Testing", "Answer 6 AnotherTest"].reversed()
    private var image: [String] = ["imageSample","imageSample","imageSample","imageSample","imageSample","imageSample"]

    @State private var sliderValue: Double = 0
        private let maxValue: Double = 10
        
    var body: some View {
        VStack {
            Group{
                HomeHeader(opacity: 1.0, text: "Information Architecture", icon: "rectangle.portrait.and.arrow.right.fill")
                Spacer()
                Spacer()
//
//                .foregroundColor(.black)
//                .lineLimit(1)
//                .padding(.leading)
//                .position(x: 300, y: 84)
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
                Spacer()
                Spacer()
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
            }
            Spacer()
            Spacer()
            Spacer()
        
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
}

