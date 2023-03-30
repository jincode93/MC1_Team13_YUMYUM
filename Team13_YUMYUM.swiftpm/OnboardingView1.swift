//
//  OnboardingView1.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/30.
//

import SwiftUI

struct OnboardingView1: View {
    @State var tapCount: Int = 0
    
    @State private var ScrollViewOffset: CGFloat = 0
    @State private var StartOffset: CGFloat = 0
    @State var showOnboardingView2: Bool = false
    var bubble1: some View {
        Image("Bubble1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 196, height: 102.51)
            .opacity(tapCount == 0 ? 0 : 1)
            .offset(y: tapCount == 0 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
            
    }
    var bubble2: some View {
        Image("Bubble2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 228, height: 105.51)
            .opacity(tapCount <= 1 ? 0 : 1)
            .offset(y: tapCount <= 1 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
    }
    var bubble3: some View {
        Image("Bubble3")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 196, height: 102.51)
            .opacity(tapCount <= 2 ? 0 : 1)
            .offset(y: tapCount <= 2 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
    }
    var bubble4: some View {
        Image("Bubble4")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 245, height: 102.51)
            .opacity(tapCount <= 3 ? 0 : 1)
            .offset(y: tapCount <= 3 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
    }
    var bubble5: some View {
        Image("Bubble5")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 142, height: 102.51)
            .opacity(tapCount <= 4 ? 0 : 1)
            .offset(y: tapCount <= 4 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
    }
    var bubble6: some View {
        Image("Bubble6")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 272, height: 102.51)
            .opacity(tapCount <= 5 ? 0 : 1)
            .offset(y: tapCount <= 5 ? 0 : -20)
            .animation(.easeIn(duration: 0.3))
    }
    
    var body: some View {
        ScrollViewReader { proxyReader in
            ScrollView(showsIndicators: false) {
                ZStack(alignment: .top) {
                    Color.MainOrange
                    
                    Image("Onboarding1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .id("Scroll_To_Bottom")
                        
                    
                    VStack {
                        HStack {
                            bubble1
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            bubble2
                        }
                        HStack {
                            bubble3
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            bubble4
                        }
                        HStack {
                            bubble5
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            bubble6
                        }
                    }
                    .padding(EdgeInsets(top: 120, leading: 20, bottom: 0, trailing: 20))
                    .overlay(
                        GeometryReader { proxy -> Color in
                            let offset = proxy.frame(in: .global).minY
                            print(offset)
                            return Color.clear
                        }
                            .frame(width: 0, height: 0)
                        ,alignment: .top
                    )
                    
                } // ZStack
                
            } // ScrollView
            .ignoresSafeArea()
            .onTapGesture {
                tapCount += 1
                switch tapCount {
                case 7:
                    
                    proxyReader
                        .scrollTo("Scroll_To_Bottom", anchor: .bottom)
                    
//                    showOnboardingView2 = true
//                    UIView.setAnimationsEnabled(false)
                case 8:
                    showOnboardingView2 = true
                    UIView.setAnimationsEnabled(false)
                default:
                    print("")
                }
            }
            .fullScreenCover(isPresented: self.$showOnboardingView2, content: OnboardingView2.init)
            
        }// scrollViewReader
        
    }
        
}
