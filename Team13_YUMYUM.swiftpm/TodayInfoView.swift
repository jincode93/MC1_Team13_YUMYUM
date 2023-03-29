//
//  TodayInfoView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import SwiftUI

struct TodayInfoView: View {
    var body: some View {
        
        ZStack(alignment: .center) {
            Rectangle()
                .fill(Color.white)
                .frame(height: 65)
                .shadow(radius: 1, x: 0, y: 1)
            
            VStack {
                HStack {
                    Text("오늘의 질문수")
                        .font(.callout)
                    Text("2,567")
                        .foregroundColor(.LightBlue)
                        .bold()
                    Spacer()
                    Text("오늘의 답변수")
                        .font(.callout)
                    Text("5,128")
                        .foregroundColor(.LightBlue)
                        .bold()
                } // HStack
                .foregroundColor(.DarkGray)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            } // VStack
            
        } // ZStack
    }
}

