//
//  OnboardingView3.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/30.
//

import SwiftUI

struct OnboardingView3: View {
    @State private var lineTop1: CGFloat = 268
    @State private var lineBottom1: CGFloat = -268
    @State var backGroundColorToggle: Bool = false
    @State var opacityValue0: Double = 1
    @State var opacityValue1: Double = 0
    @State var clickCounter: Int = 0
    @State var messageAxisY4: Double = 0
    @State var showContentView: Bool = false
    
    var body: some View {
        ZStack {
            Color(backGroundColorToggle ? "MainOrange" : "MyWhite")
            VStack {
                Spacer()
                Image("OrangeLineTop")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 422)
                    .opacity(opacityValue0)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                    .offset(x: -3, y: lineTop1)
                    .animation(.easeIn(duration: 1), value: lineTop1)
                    .onAppear {
                        lineTop1 = 0
                    }
                    .zIndex(1)
                
                Image("OnboardingMessage3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 346, height: 369)
                    .opacity(opacityValue0)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                    .zIndex(0)
                    .offset(x: 4, y: -10)
                
                Image("OrangeLineBottom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 422)
                    .opacity(opacityValue0)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    .offset(x: -3, y: lineBottom1)
                    .animation(.easeIn(duration: 1), value: lineBottom1)
                    .onAppear {
                        lineBottom1 = 0
                    }
                    .zIndex(1)
                Spacer()
            }
            .zIndex(1)
            
            Image("OnboardingMessage4")
                .resizable()
                .scaledToFit()
                .frame(width: 268)
                .opacity(opacityValue1)
                .offset(y: messageAxisY4)
                .animation(.linear(duration: 0.6), value: messageAxisY4)
            
            Image("OnboardingMessage5")
                .resizable()
                .scaledToFit()
                .frame(width: 319)
                .offset(y: messageAxisY4 + 800)
                .animation(.linear(duration: 0.6), value: messageAxisY4)
        }
        .onTapGesture {
            clickCounter += 1

            if clickCounter == 1 {
                lineTop1 = 268
                lineBottom1 = -268
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    backGroundColorToggle.toggle()
                    opacityValue0 = 0
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                    opacityValue1 = 1
                }
            } else if clickCounter == 2 {
                messageAxisY4 = -800
            } else if clickCounter == 3 {
                showContentView.toggle()
            }
        }
        .fullScreenCover(isPresented: self.$showContentView, content: ContentView.init)
    }
}

struct OnboardingView3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView3()
    }
}
