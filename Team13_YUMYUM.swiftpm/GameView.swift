//
//  GameView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.white)
                .cornerRadius(30, corners: .topLeft)
                .cornerRadius(30, corners: .topRight)
                .frame(height: 583)
            VStack(alignment: .center) {
                HStack() {
                    Text("프로젝트 에피타이저: 팀빌팅 프레임워크")
                    Spacer()
                }
                .padding(EdgeInsets(top: 45, leading: 20, bottom: 0, trailing: 20))
                
                Divider()
                    .padding(.trailing, 20)
                    .padding(.vertical, 15)
                
                VStack(alignment: .center) {
                    Button {
                        print("Game tapped")
                    } label: {
                        Image("GameCard1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 327, height: 429.41)
                    }
                    
                }
            }
            
        }
    }
}

