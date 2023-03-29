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
        ZStack {
            Rectangle()
                .fill(.white)
                .cornerRadius(30, corners: .topLeft)
                .cornerRadius(30, corners: .topRight)
                .frame(height: 810)
            
            VStack {
                Text("분야별 전문 상담")
                    .font(.callout)
                    .foregroundColor(Color("DarkGray"))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20)
                
                HStack {

                    Spacer()
                    
                    VStack(alignment: .center) {
                        Rectangle()
                            .frame(width: 52, height: 52)
                        
                        Text("베이킹")
                            .font(.callout)
                            .foregroundColor(Color("DarkGray"))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Rectangle()
                            .frame(width: 52, height: 52)
                        
                        Text("베이킹")
                            .font(.callout)
                            .foregroundColor(Color("DarkGray"))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Rectangle()
                            .frame(width: 52, height: 52)
                        
                        Text("베이킹")
                            .font(.callout)
                            .foregroundColor(Color("DarkGray"))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Rectangle()
                            .frame(width: 52, height: 52)
                        
                        Text("베이킹")
                            .font(.callout)
                            .foregroundColor(Color("DarkGray"))
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 10)
                
                Divider()
                    
                VStack(alignment: .leading) {
                    
                    Text("많이 본 Q&A")
                        .font(.callout)
                        .foregroundColor(Color("DarkGray"))
                        .padding(.top, 20)
                        .padding(.leading, 20)
                    
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Text("1")
                                .foregroundColor(Color("MainOrange"))
                            
                            Text("제가 취업준비하다가 번아웃이 왔는데요...")
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 3)
                        
                        HStack(alignment: .top) {
                            Image("BrokenLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                            
                            Text("번아웃이 오면 모든 걸 중단하는 게 좋습니다. 제 경우에는 충분한 휴식을 가졌는데, 번아웃에서 탈출하는...")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 3)
                    }
                    .padding(.leading, 20)
                    
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Text("1")
                                .foregroundColor(Color("MainOrange"))
                            
                            Text("제가 취업준비하다가 번아웃이 왔는데요...")
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 3)
                        
                        HStack(alignment: .top) {
                            Image("BrokenLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                            
                            Text("번아웃이 오면 모든 걸 중단하는 게 좋습니다. 제 경우에는 충분한 휴식을 가졌는데, 번아웃에서 탈출하는...")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 3)
                    }
                    .padding(.leading, 20)
                    
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Text("1")
                                .foregroundColor(Color("MainOrange"))
                            
                            Text("제가 취업준비하다가 번아웃이 왔는데요...")
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 3)
                        
                        HStack(alignment: .top) {
                            Image("BrokenLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                            
                            Text("번아웃이 오면 모든 걸 중단하는 게 좋습니다. 제 경우에는 충분한 휴식을 가졌는데, 번아웃에서 탈출하는...")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 3)
                    }
                    .padding(.leading, 20)
                    
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Text("1")
                                .foregroundColor(Color("MainOrange"))
                            
                            Text("제가 취업준비하다가 번아웃이 왔는데요...")
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 3)
                        
                        HStack(alignment: .top) {
                            Image("BrokenLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                            
                            Text("번아웃이 오면 모든 걸 중단하는 게 좋습니다. 제 경우에는 충분한 휴식을 가졌는데, 번아웃에서 탈출하는...")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 3)
                    }
                    .padding(.leading, 20)
                    
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                        
                        HStack {
                            Text("1")
                                .foregroundColor(Color("MainOrange"))
                            
                            Text("제가 취업준비하다가 번아웃이 왔는데요...")
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 3)
                        
                        HStack(alignment: .top) {
                            Image("BrokenLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                            
                            Text("번아웃이 오면 모든 걸 중단하는 게 좋습니다. 제 경우에는 충분한 휴식을 가졌는데, 번아웃에서 탈출하는...")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 3)
                    }
                    .padding(.leading, 20)
                    
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
                    .padding(.vertical, 4)
                }
                
                Spacer()
            }
        }
    }
}
