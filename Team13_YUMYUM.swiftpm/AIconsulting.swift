//
//  AIconsulting.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct AIconsulting: View {
    var body: some View {
        VStack {
            Divider()
            
            Text("분야별 Ai 전문 상담")
                .padding(.top)
                .padding(.bottom, 5)
            
            HStack {
                VStack {
                    Image(systemName: "heart")
                        .padding(.bottom, 5)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                    Text("베이킹")
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "heart")
                        .padding(.bottom, 5)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                    Text("탁구")
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "heart")
                        .padding(.bottom, 5)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                    Text("클라이밍")
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "heart")
                        .padding(.bottom, 5)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                    Text("풋살")
                }
            }
            .padding(.horizontal, 30)
            
            Divider()
        }
    }
}
