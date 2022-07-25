//
//  ContentView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 22/07/22.
// to github 25 jul 2922
import SwiftUI
struct ContentView: View {
    private var questions: [String] = ["What are the types of navigation?", "Lorem Ipsum", "Dolor sit amet, consectetur adipiscing elit. ", "Testing", "AnotherTest"].reversed()
    @State private var sliderValue: Double = 0
        private let maxValue: Double = 10
        
    var body: some View {
        
        VStack {
            Spacer()
            Slider(value: $sliderValue,
                   in: 0...maxValue)
                   .padding(30)
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
            ZStack {
                ForEach(questions, id: \.self) { person in
                    CardView(questions: person)

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
