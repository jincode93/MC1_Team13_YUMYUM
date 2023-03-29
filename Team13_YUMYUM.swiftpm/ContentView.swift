import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.white)
                .frame(height: 1)
            
            ScrollView {
                VStack {
                    MainTitle()
                    
                    LazyVStack(pinnedViews: [.sectionHeaders]) {
                        Section(header: Header()) {
                            
                            MemojiCardScrollView()
                            
                            NomalAndChoiceQuestion()
                            
                            AIconsulting()
                            
                            VStack {
                                HStack {
                                    Text("인기 초이스")
                                    
                                    Spacer()
                                    
                                    Text("더보기")
                                        .font(.caption)
                                }
                                
                                TabView {
                                    ChoiceCard(title: "링고에게 링고링고링하고 도망가기 VS 지쿠에게 장갑사진 줄까말까하다가 도망가기")
                                    
                                    ChoiceCard(title: "데이지보다 하이톤으로 인사하기 VS 섭보다 저음으로 인사하기")
                                    
                                    ChoiceCard(title: "밤샘 회식 후 오전 세션 참여하기 VS 금요일 밤 회식 없이 그냥 집가기")
                                }
                                .frame(height: 530)
                                .tabViewStyle(PageTabViewStyle())
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                            
                            VStack {
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 10)
                                
                                VStack {
                                    HStack {
                                        
                                        Spacer()
                                        
                                        Text("변호사상담")
                                            .padding(.vertical, 10)
                                        
                                        Spacer()
                                        
                                        Divider()
                                        
                                        Spacer()
                                        
                                        Text("연애상담")
                                            .padding(.vertical, 10)
                                        
                                        Spacer()
                                    }
                                    
                                    Divider()
                                    
                                    HStack {
                                        
                                        Spacer()
                                        
                                        Text("매일 타로 상담")
                                            .padding(.vertical, 10)
                                        
                                        Spacer()
                                        
                                        Divider()
                                        
                                        Spacer()
                                        
                                        Text("MBTI 검사")
                                            .padding(.vertical, 10)
                                        
                                        Spacer()
                                    }
                                }
                                
                                // MARK: - 배너이미지로 수정할 것
                                Rectangle()
                                    .fill(.blue)
                                    .frame(height: 120)
                                
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 10)
                            }
                            
                            VStack {
                                HStack(alignment: .bottom) {
                                    Text("많이 본 Q&A")
                                        .font(.title2)
                                    
                                    Spacer()
                                    
                                    Text("28일 21시 기준")
                                        .foregroundColor(.gray)
                                }
                                .padding(.top, 10)
                                .padding(.horizontal, 10)
                                
                                Divider()
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("1")
                                            .font(.title2)
                                            .foregroundColor(.green)
                                        
                                        Text("제가 성인 ADHD 환자인데요")
                                    }
                                    .padding(.bottom, 3)
                                    
                                    HStack(alignment: .top) {
                                        Text("ㄴ")
                                        
                                        Text("제가 어떤 여배우를 좋아해서 집중이 안되도 약을먹고 부작용을 감수하면서 그 배우의 모든 작품을 거의 다...")
                                    }
                                    .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("조회수 176")
                                            .foregroundColor(.blue)
                                        
                                        Divider()
                                        
                                        Text("답변수 2")
                                            .foregroundColor(.gray)
                                    }
                                }
                                
                                Divider()
                                
                                HStack {
                                    Text("더보기")
                                    
                                    Image(systemName: "chevron.down")
                                }
                                .foregroundColor(.gray)
                                .padding(.vertical, 10)
                                
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 10)
                            }
                            
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}
