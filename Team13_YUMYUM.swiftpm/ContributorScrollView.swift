//
//  ContributorView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import SwiftUI

struct ContributorScrollView: View {
    let contributorList: [ContributorModel] = ContributorModel.list
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.white)
                .frame(height: 274)
            VStack(alignment: .leading) {
                Text("열심답변자를 알려드립니다.")
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 20))
                Divider()
                    .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack { // HStack
                        
                        ForEach(0..<4) { row in
                            ContributorView(contributor: contributorList[row])
                                .frame(width: 160, height: 199)
                            if row != 3 {
                                Divider()
                                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 0))
                            }
                        }
                        
                        
                    } // HStack
                    
                } // ScrollView
                Divider()
                    .foregroundColor(Color.DarkGray)
            } // VStack
            
            
        } // ZStack
    }
}
