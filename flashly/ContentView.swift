//
//  ContentView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 22/07/22.
//
import SwiftUI
struct ContentView: View {
    private var questions: [String] = ["What are the types of navigation?", "Lorem Ipsum", "Dolor sit amet, consectetur adipiscing elit. ", "Testing", "AnotherTest"].reversed()

    @State private var sliderValue: Double = 0
        private let maxValue: Double = 10
        
    var body: some View {
        
        VStack {
            HStack {
            Text("Information Architecture")
                .font(.custom("Plus Jakarta Sans", size: 38))
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
                .padding()
                .frame(width: 500.0, height: 100.0)
                Spacer()
                Spacer()
                Button(action: {
                       }){
                           ZStack{
                               Circle()
                               .frame(width: 40, height: 40)
                               .foregroundColor(.black)
                               Image( systemName:"rectangle.portrait.and.arrow.right.fill"
                                )
                               .foregroundColor(.white)
                               
                       }
                }
            Spacer()
            }
//
//                .foregroundColor(.black)
//                .lineLimit(1)
//                .padding(.leading)
//                .position(x: 300, y: 84)
            Slider(value: $sliderValue,
                   in: 0...maxValue)
                   .padding(30)
            Spacer()
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
                ForEach(questions, id: \.self) { question in
                    CardView(questions: question)
            
                }
                Spacer()
            }
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
