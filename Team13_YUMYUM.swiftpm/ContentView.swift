import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackGroundGray")
                .ignoresSafeArea()
            
            VStack {
                MainTitle()
                
                ScrollView {
                    VStack {
                        VStack {
                            MemojiCardScrollView()
                                .padding(.bottom, 10)
                            
                            QAView()
                            
                            BannerView()
                                .padding(.bottom, 30)
                            
                            GameView()
                                .padding(.bottom, 10)
                            
                            ContributorScrollView()
                                .padding(.bottom, 10)
                            
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

