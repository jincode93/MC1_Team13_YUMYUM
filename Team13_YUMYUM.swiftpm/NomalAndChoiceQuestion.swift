//
//  NomalAndChoiceQuestion.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct NomalAndChoiceQuestion: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .frame(height: 80)
                .shadow(color: .gray, radius: 5, y: -15)
            // MARK: - gray를 더 연한 gray로 바꿔야됨
            
            HStack {
                Image("markQ")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                
                Text("일반 질문하기")
                
                Spacer()
                
                Image("markAB")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                
                Text("초이스 질문하기")
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 25)
        }
        .padding(.top, 10)
    }
}
