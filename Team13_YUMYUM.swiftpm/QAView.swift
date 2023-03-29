//
//  QAView.swift
//  Team13_YUMYUM
//
//  Created by Jin on 2023/03/29.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct QAView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .cornerRadius(30, corners: .topLeft)
                    .cornerRadius(30, corners: .topRight)
                    .frame(height: 780)
                
                VStack(alignment: .leading) {
                    Text("우리가 관심 있는 것들")
                        .bold()
                        .foregroundColor(Color("DarkGray"))
                        .padding(.top, 40)
                        .padding(.bottom, 10)
                        .padding(.leading, 20)
                    
                    Divider()
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    HStack {
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("icon1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 52)
                            
                            Text("베이킹")
                                .font(.callout)
                                .foregroundColor(Color("DarkGray"))
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("icon2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 42)
                            
                            Text("Github")
                                .font(.callout)
                                .foregroundColor(Color("DarkGray"))
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("icon3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 52)
                            
                            Text("탁구")
                                .font(.callout)
                                .foregroundColor(Color("DarkGray"))
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("icon4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            
                            Text("클라이밍")
                                .font(.callout)
                                .foregroundColor(Color("DarkGray"))
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    VStack(alignment: .leading) {
                        
                        Text("많이 본 Q&A")
                            .bold()
                            .foregroundColor(Color("DarkGray"))
                            .padding(.top, 20)
                            .padding(.leading, 20)
                        
//                        NavigationLink {
//                            ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
//                        } label: {
//                            VStack(alignment: .leading) {
//                                Divider()
//                                    .padding(.trailing, 20)
//                                    .padding(.vertical, 10)
//
//                                HStack {
//                                    Text("1")
//                                        .foregroundColor(Color("MainOrange"))
//
//                                    Text("제가 처음으로 팀플하게 됐는데 팀에 의견 강한...")
//                                        .padding(.leading, 10)
//                                }
//                                .padding(.bottom, 3)
//
//                                HStack(alignment: .top) {
//                                    Image("BrokenLine")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 13)
//
//                                    Text("아... 그럴 수 있죠 ㅎ 자기주장이 강한 분들만 모였나보네요.ㅋ 저희가 바로 그런 경우였습니다...")
//                                        .font(.callout)
//                                        .padding(.top, 3)
//                                }
//                                .foregroundColor(.gray)
//                                .padding(.leading, 3)
//                            }
//                            .padding(.horizontal, 20)
//                        }
                        
                        VStack(alignment: .leading) {
                            Divider()
                                .padding(.trailing, 20)
                                .padding(.vertical, 10)
                            
                            HStack {
                                Text("1")
                                    .foregroundColor(Color("MainOrange"))
                                
                                Text("제가 처음으로 팀플하게 됐는데 팀에 의견 강한...")
                                    .padding(.leading, 10)
                            }
                            .padding(.bottom, 3)
                            
                            HStack(alignment: .top) {
                                Image("BrokenLine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                                
                                Text("아... 그럴 수 있죠 ㅎ 자기주장이 강한 분들만 모였나보네요.ㅋ 저희가 바로 그런 경우였습니다...")
                                    .font(.callout)
                                    .padding(.top, 3)
                            }
                            .foregroundColor(.gray)
                            .padding(.leading, 3)
                        }
                        .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading) {
                            Divider()
                                .padding(.trailing, 20)
                                .padding(.vertical, 10)
                            
                            HStack {
                                Text("2")
                                    .foregroundColor(Color("MainOrange"))
                                
                                Text("프젝이 산으로 가는 것 같은데 이런 경우에는...")
                                    .padding(.leading, 10)
                            }
                            .padding(.bottom, 3)
                            
                            HStack(alignment: .top) {
                                Image("BrokenLine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                                
                                Text("솔루션이 산으로 간다니... 지금까지 쌓아놓은 것들이 아까워지는 상황이네요. 그래도 질문자 분의 경우...")
                                    .font(.callout)
                                    .padding(.top, 3)
                            }
                            .foregroundColor(.gray)
                            .padding(.leading, 3)
                        }
                        .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading) {
                            Divider()
                                .padding(.trailing, 20)
                                .padding(.vertical, 10)
                            
                            HStack {
                                Text("3")
                                    .foregroundColor(Color("MainOrange"))
                                
                                Text("솔루션이 결과물이 되기까지 어떻게 하면 푸쉬...")
                                    .padding(.leading, 10)
                            }
                            .padding(.bottom, 3)
                            
                            HStack(alignment: .top) {
                                Image("BrokenLine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                                
                                Text("우여곡절을 겪으셨던 것 같은데 솔루션을 도출하셨군\n요! 우선 그 어려운 일을 해내셨다는 것을 진심으로...")
                                    .font(.callout)
                                    .padding(.top, 3)
                            }
                            .foregroundColor(.gray)
                            .padding(.leading, 3)
                        }
                        .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading) {
                            Divider()
                                .padding(.trailing, 20)
                                .padding(.vertical, 10)
                            
                            HStack {
                                Text("4")
                                    .foregroundColor(Color("MainOrange"))
                                
                                Text("(스압주의) 프젝을 완주하긴 했는데 고민상담좀...")
                                    .padding(.leading, 10)
                            }
                            .padding(.bottom, 3)
                            
                            HStack(alignment: .top) {
                                Image("BrokenLine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                                
                                Text("정말 많은 일이 있으셨군요. 그래도 공통적으로 느낀점은 엄청나게 많은 피드백을 주고 받으신 것...")
                                    .font(.callout)
                                    .padding(.top, 3)
                            }
                            .foregroundColor(.gray)
                            .padding(.leading, 3)
                        }
                        .padding(.horizontal, 20)
                        
                        Divider()
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Spacer()
                            
                            Text("더보기")
                                .font(.callout)
                            
                            Image(systemName: "chevron.down")
                                .font(.callout)
                            
                            Spacer()
                        }
                        .foregroundColor(.gray)
                        .padding(.vertical, 2)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
