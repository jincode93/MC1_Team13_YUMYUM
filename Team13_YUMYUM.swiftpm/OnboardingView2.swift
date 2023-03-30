//
//  OnboardingView2.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/30.
//

import SwiftUI

struct OnboardingView2: View {
    @State private var lineTop1: CGFloat = 0
    @State private var lineBottom1: CGFloat = 0
    
    @State private var lineTop2: CGFloat = 196
    @State private var lineBottom2: CGFloat = -196
    
    @State private var backGroundColorToggle: Bool = false
    
    @State private var color: Color = .white
    @State var showOnboardingView3: Bool = false
    
    @State var opacityValue1: Double = 0
    @State var opacityValue0: Double = 1
    @State var opacityValue2: Double = 1
    @State var opacityValue3: Double = 1
    @State var clickCounter: Int = 0
    
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
                        lineTop1 = 196
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            opacityValue1 = 1
                            backGroundColorToggle.toggle()
                            opacityValue0 = 0
                            opacityValue3 = 0
                        }
                    }
                    .zIndex(1)
                
                Image("OnboardingMessage1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 346, height: 219)
                    .opacity(opacityValue3)
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
                        lineBottom1 = -196
                    }
                    .zIndex(1)
                Spacer()
            }
            .zIndex(1)
            
            VStack {
                Spacer()
                Image("WhiteLineTop")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(opacityValue2)
                    .frame(height: 422)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                    .offset(x: -3, y: lineTop2)
                    .animation(.easeIn(duration: 1), value: lineTop2)
                    .onAppear {
                        lineTop2 = 196
                    }
                    .zIndex(1)
                
                Image("OnboardingMessage2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 346, height: 219)
                    .opacity(opacityValue2)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                    .zIndex(0)
                    .offset(x: 4, y: -10)
                
                Image("WhiteLineBottom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(opacityValue2)
                    .frame(height: 422)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    .offset(x: -3, y: lineBottom2)
                    .animation(.easeIn(duration: 1), value: lineBottom2)
                    .onAppear {
                        lineBottom2 = -196
                    }
                    .zIndex(1)
                Spacer()
            }
            .zIndex(2)
            .opacity(opacityValue1)
        }
        .background(color)
        .onTapGesture {
            clickCounter += 1
            
            if clickCounter == 1 {
                opacityValue1 = 1
            } else if clickCounter == 2 {
                lineTop2 = 0
                lineBottom2 = 0
            } else if clickCounter == 3 {
                lineTop2 = 196
                lineBottom2 = -196
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    backGroundColorToggle.toggle()
                    opacityValue2 = 0
                    opacityValue0 = 1
                }
            } else if clickCounter == 4 {
                showOnboardingView3.toggle()
            }
        }
        .fullScreenCover(isPresented: self.$showOnboardingView3, content: OnboardingView3.init)
    }
}

