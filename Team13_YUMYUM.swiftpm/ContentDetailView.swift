//
//  ContentDetailView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/30.
//

import SwiftUI

struct ContentDetailView: View {
    
    let questionModel: DetailViewQuestionModel
    let answerModel: DetailViewAnswerModel
    
    var body: some View {
        ZStack {
            Color("BackGroundGray")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                MainTitle()
                
                Image("QuestionBox")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 340, height: 332)
                    .overlay(alignment: .leading){
                        VStack(alignment: .leading) {
                            Spacer()
                            Text(questionModel.description)
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                                .lineSpacing(8)
                                .padding(.top, 50)
                            Spacer()
                            HStack(spacing: 5) {
                                ForEach(questionModel.hashTagList, id: \.self) {
                                    Text("#\($0)")
                                        .font(.callout)
                                        .foregroundColor(.LightYellow)
                                        .padding(.bottom, 40)
                                }
                            }
                        }
                        .padding(.leading, 30)
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                
                Image("AnswerBox")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 340, height: 332)
                    .overlay(alignment: .leading){
                        VStack(alignment: .leading) {
                            Text(answerModel.description)
//                            Text("프젝이 산으로 가는 것 같은데\n이런 경우에는 어떻게\n해야할까요? ㅜㅜ")
//                            Text("제가 처음으로 팀플을 하게\n됐는데 팀에 의견 강한 사람만\n있는거 합법인가요???")
                                .bold()
                                .foregroundColor(.DarkGray)
                                .font(.title2)
                                .lineSpacing(8)
                                .padding(.top, 70)
                        }
                        .padding(.leading, 30)
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
            }
            
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView(questionModel: DetailViewQuestionModel.list[1], answerModel: DetailViewAnswerModel.list[2])
    }
}
