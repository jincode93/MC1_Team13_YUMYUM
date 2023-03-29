//
//  MimogyCard.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct MemojiCardScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                MemojiCard(title: "백엔드 엑스퍼트 (허클베리)", detail: "JSON 상하차가 필요할 땐", cardColor: "LightOrange")
                    .padding(.leading, 20)
                
                MemojiCard(title: "iFarm 성지 (옐슨)", detail: "얼음 구하기", cardColor: "LightPurple")
                
                MemojiCard(title: "오늘의 질문 (제롬)", detail: "좋아하는 코테 언어는?", cardColor: "LightBlue")
                
                MemojiCard(title: "아하! 그렇구나 (코비)", detail: "김코비씨는 김씨인가요?", cardColor: "LightGreen")
                
                MemojiCard(title: "저메 CHUICE (완)", detail: "자취요리 (야메요리 외전 aka 요린이", cardColor: "LightYellow")
            }
            .padding(.bottom, 15)
        }
    }
}

struct MemojiCard: View {
    var title: String
    var detail: String
    var cardColor: String
    
    var body: some View { 
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(cardColor))
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                Text(detail)
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
        }
        .frame(width: 200, height: 240)
        //.shadow(radius: 10, x: 10, y: 10)
    }
}
