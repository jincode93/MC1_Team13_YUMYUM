//
//  ContributorView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import SwiftUI

struct ContributorView: View {
    let contributor: ContributorModel
    var body: some View {
        
            VStack {
                Spacer()
                Image(contributor.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                Text(contributor.name)
                    .bold()
                    
                Text(contributor.tier)
                    .font(.callout)
                    .foregroundColor(Color.MainOrange)
                    .padding(.bottom, 1)
                    
                HStack{
                    Text("최근답변")
                        .foregroundColor(Color.DarkGray)
                    Text("\(contributor.answers)")
                        .foregroundColor(Color.LightBlue)
                }
                .font(.callout)
                Spacer()
            }

    }
}

