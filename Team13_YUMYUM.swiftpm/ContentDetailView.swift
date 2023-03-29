//
//  ContentDetailView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/28.
//

import SwiftUI

struct ContentDetailView: View {
    
    let questionModel: DetailViewQuestionModel
    let answerModel: DetailViewAnswerModel
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack (alignment: .leading){
                    
                    // MARK: 질문 Cell
                    VStack(alignment: .leading) {
                        HStack {
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Text(questionModel.title)
                                .padding(.leading)
                            Spacer()
                            Text("\(questionModel.score)")
                                .bold()
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                                .background(.gray)
                                .cornerRadius(4)
                        }
                        .font(.title3)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                        
                        HStack {
                            Text("이름 • 채택률")
                            Text("\(questionModel.adoptionRate)%")
                                .foregroundColor(.green)
                            Text("• 마감률")
                            Text("\(questionModel.closingRate)%")
                                .foregroundColor(.green)
                        }
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                        .font(.callout)
                        
                        HStack {
                            Text(questionModel.description)
                        }
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                        
                        HStack {
                            ForEach(questionModel.hashTagList, id: \.self) {
                                Text("#\($0)")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 0))
                        
                        
                        HStack {
                            Text(questionModel.date)
                            Text("조회수 \(questionModel.views)")
                        }
                        .foregroundColor(.gray)
                        .font(.callout)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                        
                        HStack {
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            // TODO: Bind
                            Text("나도 궁금해요 \(questionModel.curious)")
                            Spacer()
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Text("\(questionModel.curious)")
                            Spacer()
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Spacer()
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                        }
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 30, trailing: 15))
                    }
                    .background(.white)
                    
                    
                    
                    
                    // MARK: 유저 답변하기 Cell
                    VStack {
                        Divider()
                        
                        HStack {
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Text("김코비****님")
                            Spacer()
                            Text("답변하기")
                                .bold()
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(.blue)
                                .cornerRadius(8)
                        }
                        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                        
                        Divider()
                    }
                    .background(.white)
                    
                    
                    // MARK: 답변 Cell
                    VStack(alignment: .leading) {
                        HStack {
                            Text("답변")
                            Text("10")
                                .foregroundColor(.blue)
                            Text("개")
                            
                            Spacer()
                            Divider()
                            Text("최적")
                            Divider()
                            Text("원문")
                            Divider()
                            HStack {
                                Image("markQuestion")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                Text("옵션")
                            }
                            
                        }
                        .frame(height: 50)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                        
                        Divider()
                        
                        
                        // 답변자 배너 Cell
                        ZStack(alignment: .leading){
                            HStack(alignment: .center)  {
                                Spacer()
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(height: 100)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 1)
                                // TODO: shadow -> lightGray
                                Spacer()
                            }
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("\(answerModel.userName)")
                                            .font(.title3)
                                            .bold()
                                        
                                        Text("\(answerModel.tier)")
                                            .bold()
                                            .foregroundColor(.cyan)
                                            .font(.callout)
                                            .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 8)
                                                    .stroke(Color.cyan, lineWidth: 1)
                                            }
                                    }
                                    Spacer()
                                    Image("\(answerModel.imageName)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .background(.gray)
                                }
                                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                            }
                        } // 답변자 배너 Cell
                        
                        
                        
                        HStack {
                            Text("본인 입력 포함 정보")
                                .font(.caption)
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                            Spacer()
                            Text("프로필 더보기")
                                .font(.caption)
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                        }
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        
                        
                        // TODO: Bind
                        Text(
                            "\(answerModel.description)"
                        )
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                        
                        
                        Text("\(answerModel.ago)분 전")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                        
                        HStack {
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Text("표정")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Text("댓글")
                            Spacer()
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            Image("markQuestion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                        }
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            HStack() {
                                Image("markQuestion")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                                
                                Text("알아두세요!")
                                    .foregroundColor(.red)
                                    .font(.caption)
                            }
                            
                            Text("위 답변은 답변작성자가 경험과 지식을 바탕으로 작성한 내용입니다. 포인트로 감사할 때 참고해주세요.")
                                .foregroundColor(.gray)
                                .font(.caption)
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 0, trailing: 0))
                        }
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                        
                    } // 답변 Cell
                    .background(.white)
                    
                }
                
                
                
            }
            .background(.gray)
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
    }
}
