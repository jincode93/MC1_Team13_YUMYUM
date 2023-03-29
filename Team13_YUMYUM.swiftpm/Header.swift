//
//  Header.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(height: 40)
            
            HStack {
                Text("Q&A")
                    .font(.title3)
                
                Spacer()
                
                Text("CHOiCE")
                    .font(.title3)
                
                Spacer()
                
                Text("답변하기")
                    .font(.title3)
                
                Spacer()
                
                Text("지식기부")
                    .font(.title3)
                
                Spacer()
                
                Text("사람들")
                    .font(.title3)
            }
            .padding(.horizontal, 15)
        }
    }
}
