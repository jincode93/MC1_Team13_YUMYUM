//
//  ContentDetailView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/28.
//

import SwiftUI

struct ContentDetailView: View {
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading){
                
                // MARK: 질문 Cell
                VStack(alignment: .leading) {
                    HStack {
                        Image("markQuestion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        // TODO: Bind
                        Text("여러분에게 성장이란 무엇인가요")
                        Text(" 50 ")
                            .bold()
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(4)
                    }
                    .font(.title3)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                    
                    // TODO: Bind
                    HStack {
                        Text("이름")
                        Text("•")
                        Text("채택률")
                        Text("100%")
                            .foregroundColor(.green)
                        Text("•")
                        Text("마감률")
                        Text("100%")
                            .foregroundColor(.green)
                    }
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                    .font(.callout)
                    
                    HStack {
                        Text("서로 다른 생활패턴과 성향을 가진 사람들이 같은 공간을 공유하려고 하니 그럴 수도 있고, 어찌 보면 당연한 것 같아요.")
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                    
                    // TODO: Bind
                    HStack {
                        Text("#해시태그1")
                        Text("#해시태그2")
                        Text("#해시태그3")
                        Text("#해시태그4")
                    }
                    .foregroundColor(.white)
                    .background(.blue)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                    
                    // TODO: Bind
                    HStack {
                        Text("2023.03.28.")
                        Text("조회수 1,056")
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
                        Text("나도 궁금해요 1")
                        Image("markQuestion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        Text("1")
                        Image("markQuestion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 30, trailing: 15))
                }
                
                
                
                // MARK: 유저 답변하기 Cell
                VStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .border(.black)
                        .frame(width: .infinity, height: 10)
                    
                    HStack {
                        Image("markQuestion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        // TODO: Bind
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
                    
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .border(.black)
                        .frame(width: .infinity, height: 10)
                }
                
                
                
                // MARK: 답변 Cell
                VStack(alignment: .leading) {
                    HStack {
                        Text("답변")
                        // TODO: Bind
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
                                .frame(width: .infinity, height: 100)
                                .shadow(color: .gray, radius: 2, x: 0, y: 1)
                            // TODO: shadow -> lightGray
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        
                        VStack(alignment: .leading) {
                            HStack {
                                VStack(alignment: .leading) {
                                    // TODO: Bind
                                    Text("V멘토V")
                                        .font(.title3)
                                        .bold()
                                    
                                    // TODO: Bind
                                    Text("태양신")
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
                                Image("markQuestion")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
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
                        " 아.... 그럴 수 있죠.ㅎ 자기주장이 강한 분들만 모였나보네요.ㅋ\n\n 저희가 바로 그런 경우였습니다.ㅋㅋㅋ\n\n 저희같은 경우에는 처음에 팀만의 규칙을 정했는데요. '이상한 질문 해도 꼽주지 않기' '아닌 것 같은 건 아니라고 하기' 등 발언권의 자유를 보장하는 항목을 많이 넣었었죠.ㅋㅋ\n\n 그런데 그렇게 정하지 않아도 될 정도로 다양한 의견이 나오더라고요. 그러다보니 방향이 안 잡히고 제각각 흩어지는 것 같았는데, 나중에는 그게 하나로 모이는 시기도 있더군요. \n\n 지치지 않고 끊임없이 피드백하고 소통하는것만이 답인듯합니다.\n\n 질문자분도 첫 팀플이라 혼란스러우시겠지만 화이팅입니다!ㅎㅎ 열심히 작성했으니 채택좀ㅎ"
                    )
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                    
                    
                    Text("10초 전")
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

            }
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
