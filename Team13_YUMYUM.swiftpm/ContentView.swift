import SwiftUI

struct ContentView: View {
    @State private var isCardFlip1: Bool = false
    @State private var cardOpacity1: Double = 1
    @State private var backOpacity1: Double = 0
    
    @State private var isCardFlip2: Bool = false
    @State private var cardOpacity2: Double = 1
    @State private var backOpacity2: Double = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackGroundGray")
                    .ignoresSafeArea()
                //            Image("BackGround")
                //                .ignoresSafeArea()
                
                ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.black)
                        .opacity(isCardFlip1 || isCardFlip2 ? 0.5 : 0)
                        .zIndex(1)
                    
                    VStack {
                        Rectangle()
                            .fill(Color("BackGroundGray"))
                            .frame(height: 1)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading) {
                                Image("MainTitle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 204)
                                    .padding(.vertical, 20)
                                
                                
                                Text("우리 각자에 대한 이야기")
                                    .bold()
                                    .foregroundColor(Color("DarkGray"))
                                
                                Divider()
                                    .padding(.vertical, 10)
                            }
                            .padding(.horizontal, 20)
                            
                            ZStack {
                                Image("CardBack1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350)
                                    .offset(y: -850)
                                    .opacity(backOpacity1)
                                    .animation(.linear(duration: 0.4), value: backOpacity1)
                                    .onTapGesture {
                                        isCardFlip1.toggle()
                                        cardOpacity1 = 1
                                        backOpacity1 = 0
                                    }
                                    .animation(.linear(duration: 0.4))
                                    .zIndex(2)
                                
                                Image("CardBack2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350)
                                    .offset(y: -850)
                                    .opacity(backOpacity2)
                                    .animation(.linear(duration: 0.4), value: backOpacity2)
                                    .onTapGesture {
                                        isCardFlip2.toggle()
                                        cardOpacity2 = 1
                                        backOpacity2 = 0
                                    }
                                    .animation(.linear(duration: 0.4))
                                    .zIndex(2)
                                
                                VStack {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            Image("MemogiCard1")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 200)
                                                .padding(.leading, 20)
                                                .onTapGesture {
                                                    isCardFlip1.toggle()
                                                    cardOpacity1 = 0
                                                    backOpacity1 = 1
                                                }
                                                .rotation3DEffect(.degrees(isCardFlip1 ? 180 : 0), axis: (0.0,1.0,0.0))
                                                .animation(.linear(duration: 0.4))
                                                .opacity(cardOpacity1)
                                                .animation(.linear(duration: 0.4), value: cardOpacity1)
                                            
                                            Image("MemogiCard2")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 200)
                                                .onTapGesture {
                                                    isCardFlip2.toggle()
                                                    cardOpacity2 = 0
                                                    backOpacity2 = 1
                                                }
                                                .rotation3DEffect(.degrees(isCardFlip2 ? 180 : 0), axis: (0.0,1.0,0.0))
                                                .animation(.linear(duration: 0.4))
                                                .opacity(cardOpacity2)
                                                .animation(.linear(duration: 0.4), value: cardOpacity2)
                                        }
                                    }
                                    
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
                                                
                                                NavigationLink {
                                                    ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
                                                } label: {
                                                    VStack(alignment: .leading) {
                                                        Divider()
                                                            .padding(.trailing, 20)
                                                            .padding(.vertical, 10)
                                                        
                                                        HStack {
                                                            Text("1")
                                                                .foregroundColor(Color("MainOrange"))
                                                            
                                                            Text("제가 처음으로 팀플하게 됐는데 팀에 의견 강한...")
                                                                .padding(.leading, 10)
                                                                .foregroundColor(.black)
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
                                                }
                                                
                                                NavigationLink {
                                                    ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
                                                } label: {
                                                    VStack(alignment: .leading) {
                                                        Divider()
                                                            .padding(.trailing, 20)
                                                            .padding(.vertical, 10)
                                                        
                                                        HStack {
                                                            Text("2")
                                                                .foregroundColor(Color("MainOrange"))
                                                            
                                                            Text("프젝이 산으로 가는 것 같은데 이런 경우에는...")
                                                                .padding(.leading, 10)
                                                                .foregroundColor(.black)
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
                                                }
                                                
                                                NavigationLink {
                                                    ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
                                                } label: {
                                                    VStack(alignment: .leading) {
                                                        Divider()
                                                            .padding(.trailing, 20)
                                                            .padding(.vertical, 10)
                                                        
                                                        HStack {
                                                            Text("3")
                                                                .foregroundColor(Color("MainOrange"))
                                                            
                                                            Text("솔루션이 결과물이 되기까지 어떻게 하면 푸쉬...")
                                                                .padding(.leading, 10)
                                                                .foregroundColor(.black)
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
                                                }
                                                
                                                NavigationLink {
                                                    ContentDetailView(questionModel: DetailViewQuestionModel.list[0], answerModel: DetailViewAnswerModel.list[0])
                                                } label: {
                                                    VStack(alignment: .leading) {
                                                        Divider()
                                                            .padding(.trailing, 20)
                                                            .padding(.vertical, 10)
                                                        
                                                        HStack {
                                                            Text("4")
                                                                .foregroundColor(Color("MainOrange"))
                                                            
                                                            Text("(스압주의) 프젝을 완주하긴 했는데 고민상담좀...")
                                                                .padding(.leading, 10)
                                                                .foregroundColor(.black)
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
                                                }
                                                
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
                                    
                                    BannerView()
                                        .padding(.bottom, 30)
                                    
                                    GameView()
                                        .padding(.bottom, 10)
                                    
                                    // MARK: - 삭제예정
                                    //                            ContributorScrollView()
                                    //                                .padding(.bottom, 10)
                                    
                                    TodayInfoView()
                                        .padding(.bottom, 50)
                                    
                                    VStack {
                                        ZStack {
                                            Rectangle()
                                                .fill(Color.white)
                                                .frame(width: 250, height: 41)
                                                .shadow(radius: 1, x: 0, y: 1)
                                            HStack{
                                                Rectangle()
                                                    .frame(width: 24, height: 24)
                                                    .cornerRadius(12)
                                                    .foregroundColor(.DarkGray)
                                                Text("YUMYUM 팀 성장에")
                                                Text("#MC1")
                                                    .foregroundColor(.MainOrange)
                                                Text("추가")
                                            }
                                            .font(.caption)
                                        }
                                    }
                                    .padding(.bottom, 30)
                                    
                                    
                                    HStack {
                                        Image("UpperArrow")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 16, height: 15)
                                        Text("맨위로")
                                    }
                                    .padding(.bottom, 30)
                                    
                                    VStack{
                                        Text("@YUMYUM / 13Team")
                                        Text("얌얌팀의 페이지에 오신 여러분을 환영합니다.")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.DarkGray)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
