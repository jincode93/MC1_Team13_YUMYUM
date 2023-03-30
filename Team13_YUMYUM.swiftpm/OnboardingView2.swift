//
//  OnboardingView2.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/30.
//

import SwiftUI

struct OnboardingView2: View {
    @State private var line1: CGFloat = 0
    @State private var line2: CGFloat = 0
    @State private var color: Color = .white
    @State var showOnboardingView3: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Image("OrangeLineTop")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 422)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                .offset(y: line1)
                .animation(.easeIn(duration: 3))
                .onAppear {
                    line1 = 196
                }
                .zIndex(1)
            Image("OnboardingMessage1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 346, height: 219)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 75, trailing: 20))
                .zIndex(0)
            Image("OrangeLineBottom")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 422)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .offset(y: line2)
                .animation(.easeIn(duration: 3))
                .onAppear {
                    line2 = -196
                }
                .zIndex(1)
            Spacer()
        }
        .background(color)
        .onDisappear{
            
        }
        .onTapGesture {
            //color = .MainOrange
            //showOnboardingView3 = true
            //UIView.setAnimationsEnabled(false)
        }
        //.fullScreenCover(isPresented: self.$showOnboardingView3, content: OnboardingView3.init)
    }
        
}

