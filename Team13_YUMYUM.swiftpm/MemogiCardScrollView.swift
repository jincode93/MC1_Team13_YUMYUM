//
//  MimogyCard.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/28.
//

import SwiftUI

struct MemojiCardScrollView: View {
    @State private var isFaceUp = true
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                CardView(isFaceUp: isFaceUp, imageName: "Cake3", axis: (0,1,0))
                    .animation(.linear(duration: 1.0))
                    .frame(width:200)
                    .onTapGesture {
                        isFaceUp.toggle()
                    }
                
                Image("MemogiCard2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Image("MemogiCard3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Image("MemogiCard4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Image("MemogiCard5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Image("MemogiCard6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            .padding(.leading, 20)
            .padding(.bottom, 15)
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var imageName = "BackCard1"
    var axis:(CGFloat,CGFloat,CGFloat) = (1.0,0.0,0.0)
    
    var body: some View {
        ZStack {
            Image("MemogiCard1")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            if isFaceUp {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .cornerRadius(15.0)
                    .padding(10)
            }
        }
        .rotation3DEffect(
            Angle.degrees(isFaceUp ? 0: 180),
            axis: axis
        )
    }
}
