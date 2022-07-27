//
//  SwiftUIView.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 26/07/22.
//

import SwiftUI
import PencilKit

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
    @State private var question: String = "Question Example"
 @State var canvas = PKCanvasView()
    var body: some View {
        HStack() {
            Spacer()
                .padding(72)
            VStack (alignment: .leading)
            {
                ZStack(alignment: .leading)
                {
                    VStack{
            GeneralButton(icon: "xmark")
                    Spacer()
                            .frame(height: 60)
                    }
                    Text("Create Flashcards")
                            .fontWeight(.bold)
                            .frame(width: 704, height: 30, alignment: .leading)
                            .font(.custom("Plus Jakarta Sans", size: 24))
                            .foregroundColor(.black)
                }
                ScrollView{
            Text("Topic")
                    .fontWeight(.bold)
                    .frame(width: 704, height: 30, alignment: .leading)
                    .font(.custom("Plus Jakarta Sans", size: 24))
                    .foregroundColor(.black)
                   
            Text("Information Architecture")
                        .fontWeight(.regular)
                        .frame(width: 704, height: 30, alignment: .leading)
                        .font(.custom("Plus Jakarta Sans", size: 24))
                        .foregroundColor(.black)
                        .lineLimit(2)
            Spacer()
                        .frame(height: 27)
            Text("Front Card")
                        .fontWeight(.bold)
                        .frame(width: 704, height: 30, alignment: .leading)
                        .font(.custom("Plus Jakarta Sans", size: 24))
                        .foregroundColor(.black)
                        
            ZStack {
            Rectangle()
                        .frame(width: 704, height: 409)
                        .cornerRadius(20)
                        .foregroundColor(Color("FlashlyYellowAccent"))
                    VStack {
                        Text("Question")
                            .frame(width: 650, height: 0, alignment: .leading)
                        TextField("Question", text: $question)
                        Text("abc")
                            .fontWeight(.bold)
                            .frame(width: 590, height: 30, alignment: .center)
                            .font(.custom("Plus Jakarta Sans", size: 24))
                            .foregroundColor(.black)
                            .lineLimit(2)
                        DrawingView(canvas: $canvas)
                            .frame(width: 400, height: 300)
                        }
                }
                    Spacer()
                        .frame(height: 27)
            Text("Back Card")
                        .fontWeight(.bold)
                        .frame(width: 704, height: 30, alignment: .leading)
                        .font(.custom("Plus Jakarta Sans", size: 24))
                        .foregroundColor(.black)
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
                        .frame(width: 0, height:80)
                HStack {
                    WhiteButton(text: "Add Another Card")
                        Spacer()
                        .frame(width: 101)
                    YellowButton(text: "Finish")
                    Spacer()
        }
        
        }
            }
            Spacer()
                .frame(width: 72)
        }
    
        }
    
        }
    


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        createCard()
    
    }
}

struct DrawingView : UIViewRepresentable {
@Binding var canvas : PKCanvasView
func makeUIView(context: Context ) -> PKCanvasView{
    canvas.drawingPolicy = .anyInput
    return canvas
}
    func updateUIView( _ uiView: PKCanvasView, context: Context) {
}
}
