//
//  CardGameView.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/30.
//

import SwiftUI

struct CardGameView: View {
    @State var isFaceUp1 = false
    @State var passCard1 = 0
    @State var cardRotation1: Double = 0
    @State var axisX1: CGFloat = 0
    
    @State var isFaceUp2 = false
    @State var passCard2 = 0
    @State var cardRotation2: Double = 0
    @State var axisX2: CGFloat = 0
    @State var opacityValue2: Double = 0
    
    @State var isFaceUp3 = false
    @State var passCard3 = 0
    @State var opacityValue3: Double = 0
    
    @State var endingOpacityValue: Double = 0
    @State var endingAxisY: Double = 1000
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
                .opacity(0.5)
            
            ZStack {
                Image("GameBase")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 327)
                
                CardView(isFaceUp: isFaceUp1, imageName: "Game1", frontImageName: "GameBack")
                    .animation(.linear(duration: 0.4))
                    .rotationEffect(Angle(degrees: cardRotation1), anchor: .bottomTrailing)
                    .animation(.linear(duration: 0.6), value: axisX1)
                    .offset(x: axisX1)
                    .onTapGesture {
                        isFaceUp1 = true
                        passCard1 += 1
                        if passCard1 == 2 {
                            axisX1 = 300
                            cardRotation1 = 30
                            opacityValue2 = 1
                        }
                    }
                    .zIndex(3)
                
                CardView(isFaceUp: isFaceUp2, imageName: "Game2", frontImageName: "GameBack")
                    .animation(.linear(duration: 0.4))
                    .rotationEffect(Angle(degrees: cardRotation2), anchor: .bottomTrailing)
                    .animation(.linear(duration: 0.6), value: axisX2)
                    .offset(x: axisX2)
                    .opacity(opacityValue2)
                    .onTapGesture {
                        isFaceUp2 = true
                        passCard2 += 1
                        if passCard2 == 2 {
                            axisX2 = 300
                            cardRotation2 = 30
                            opacityValue3 = 1
                        }
                    }
                    .zIndex(2)
                
                CardView(isFaceUp: isFaceUp3, imageName: "Game3", frontImageName: "GameBack")
                    .animation(.linear(duration: 0.4))
                    .opacity(opacityValue3)
                    .onTapGesture {
                        isFaceUp3 = true
                    }
                    .gesture(
                        LongPressGesture(minimumDuration: 1)
                            .onEnded({ _ in
                                withAnimation(.easeOut(duration: 0.6)) {
                                    endingAxisY = 0
                                }
                            })
                    )
                    .zIndex(1)
            }
            
            Image("Ending")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .frame(width: 420)
                .zIndex(0)
                .offset(x: -22, y: endingAxisY)
        }
        .navigationBarHidden(true)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var imageName = "imageName"
    var frontImageName = "frontImageName"
    var axis:(CGFloat,CGFloat,CGFloat) = (0.0,1.0,0.0)
    
    var body: some View {
        ZStack {
            Image(frontImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 290)
                .opacity(isFaceUp ? 0.2 : 1.0)
            
            if isFaceUp {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 290)
                    .opacity(isFaceUp ? 1.0 : 0.5)
            }
        }
        .rotation3DEffect(
            Angle.degrees(isFaceUp ? 0: 180),
            axis: axis
        )
    }
}
