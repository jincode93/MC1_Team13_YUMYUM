import SwiftUI

struct ContentView: View {
    @State private var isCardFlip1: Bool = false
    @State private var cardOpacity1: Double = 1
    @State private var backOpacity1: Double = 0
    
    @State private var isCardFlip2: Bool = false
    @State private var cardOpacity2: Double = 1
    @State private var backOpacity2: Double = 0
    
    var body: some View {
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
                                .offset(y: -250)
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
                                .offset(y: -250)
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
                                
                                QAView()
                                    .zIndex(2)
                                
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
