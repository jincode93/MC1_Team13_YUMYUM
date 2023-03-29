//
//  ChoiceCard.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct ChoiceCard: View {
    var title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.gray)
            
            VStack {
                Text(title)
                    .padding(10)
                
                Spacer()
                
                // 이미지 두개 넣으면 됨
            }
        }
        .frame(width: 320, height: 500)
        .shadow(radius: 10, x: 10, y: 10)
    }
}
