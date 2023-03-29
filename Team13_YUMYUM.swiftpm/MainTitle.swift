//
//  mainTitle.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct MainTitle: View {
    var body: some View {
        HStack {
            Image("MainLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
            
            Text("지식iN")
                .font(.title)
                .padding(.leading, 5)
            
            Divider()
                .frame(height: 20)
            
            Image("Learner")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
            
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom)
        .padding(.horizontal, 20)
    }
}
