import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.white)
                .frame(height: 1)
            
            ScrollView {
                VStack {
                    HStack {
                        Image("naverLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        
                        Text("지식i")
                            .font(.title)
                            .bold()
                        
                        Divider()
                            .frame(height: 20)
                        
                        Text("learner")
                            .font(.title)
                            .foregroundColor(.blue)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title3)
                        
                        Image("markQ")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                    }
                    .padding(.top, 5)
                    .padding(.bottom)
                    .padding(.horizontal, 10)
                    
                    LazyVStack(pinnedViews: [.sectionHeaders]) {
                        Section(header: Header()) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    MemojiCard(title: "백엔드 엑스퍼트 (허클베리)", detail: "JSON 상하차가 필요할 땐")
                                        .padding(.leading, 20)
                                    
                                    MemojiCard(title: "iFarm 성지 (옐슨)", detail: "얼음 구하기")
                                    
                                    MemojiCard(title: "오늘의 질문 (제롬)", detail: "좋아하는 코테 언어는?")
                                    
                                    MemojiCard(title: "아하! 그렇구나 (코비)", detail: "김코비씨는 김씨인가요?")
                                    
                                    MemojiCard(title: "저메 CHUICE (완)", detail: "자취요리 (야메요리 외전 aka 요린이")
                                }
                                .padding(.bottom, 15)
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.white)
                                    .frame(height: 80)
                                    .shadow(color: .gray, radius: 5, y: -15)
                                // MARK: - gray를 더 연한 gray로 바꿔야됨
                                
                                HStack {
                                    Image("markQ")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35)
                                    
                                    Text("일반 질문하기")
                                    
                                    Spacer()
                                    
                                    Image("markAB")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35)
                                    
                                    Text("초이스 질문하기")
                                }
                                .padding(.vertical, 20)
                                .padding(.horizontal, 25)
                            }
                            .padding(.top, 10)
                            
                            Divider()
                            
                            Text("분야별 Ai 전문 상담")
                                .padding(.top)
                                .padding(.bottom, 5)
                            
                            HStack {
                                VStack {
                                    Image(systemName: "heart")
                                        .padding(.bottom, 5)
                                        .font(.largeTitle)
                                        .foregroundColor(.green)
                                    
                                    Text("베이킹")
                                }
                                
                                Spacer()
                                
                                VStack {
                                    Image(systemName: "heart")
                                        .padding(.bottom, 5)
                                        .font(.largeTitle)
                                        .foregroundColor(.green)
                                    
                                    Text("탁구")
                                }
                                
                                Spacer()
                                
                                VStack {
                                    Image(systemName: "heart")
                                        .padding(.bottom, 5)
                                        .font(.largeTitle)
                                        .foregroundColor(.green)
                                    
                                    Text("클라이밍")
                                }
                                
                                Spacer()
                                
                                VStack {
                                    Image(systemName: "heart")
                                        .padding(.bottom, 5)
                                        .font(.largeTitle)
                                        .foregroundColor(.green)
                                    
                                    Text("풋살")
                                }
                            }
                            .padding(.horizontal, 30)
                            
                            Divider()
                            
                            VStack {
                                HStack {
                                    Text("인기 초이스")
                                    
                                    Spacer()
                                    
                                    Text("더보기")
                                        .font(.caption)
                                }
                                
                                ChoiceCard(title: "링고에게 링고링고링하고 도망가기 VS 지쿠에게 장갑사진 줄까말까하다가 도망가기")
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                            
                            VStack {
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 20)
                                
                                VStack {
                                    HStack {
                                        Text("변호사상담")
                                        
                                        Divider()
                                        
                                        Text("연애상담")
                                    }
                                    
                                    Divider()
                                    
                                    HStack {
                                        Text("매일 타로 상담")
                                        
                                        Divider()
                                        
                                        Text("MBTI 검사")
                                    }
                                    
                                    // MARK: - 배너이미지로 수정할 것
                                    Rectangle()
                                        .fill(.blue)
                                        .frame(height: 120)
                                }
                                
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 20)
                            }
                            
                            VStack {
                                HStack {
                                    Text("많이 본 Q&A")
                                    
                                    Spacer()
                                    
                                    Text("28일 21시 기준")
                                }
                            }
                            
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct Header: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(height: 40)
            
            HStack {
                Text("Q&A")
                    .font(.title3)
                
                Spacer()
                
                Text("CHOiCE")
                    .font(.title3)
                
                Spacer()
                
                Text("답변하기")
                    .font(.title3)
                
                Spacer()
                
                Text("지식기부")
                    .font(.title3)
                
                Spacer()
                
                Text("사람들")
                    .font(.title3)
            }
            .padding(.horizontal, 15)
        }
    }
}

struct MemojiCard: View {
    var title: String
    var detail: String
    // var cardColor: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                Text(detail)
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
        }
        .frame(width: 180, height: 220)
        //.shadow(radius: 10, x: 10, y: 10)
    }
}

struct ChoiceCard: View {
    var title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
            
            VStack {
                Text(title)
                    .padding(10)
                
                Spacer()
                
                // 이미지 두개 넣으면 됨
            }
        }
        .frame(width: 320, height: 500)
        .shadow(radius: 10, x: 10, y: 10)
    }
}

