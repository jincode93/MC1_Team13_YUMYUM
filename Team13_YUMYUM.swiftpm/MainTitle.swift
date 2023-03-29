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
                .bold()
            
            Divider()
                .frame(height: 20)
            
            Text("learner")
                .font(.title)
            
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom)
        .padding(.horizontal, 10)
    }
}
