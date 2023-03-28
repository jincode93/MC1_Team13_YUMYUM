//
//  ContentDetailView.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/28.
//

import SwiftUI

struct ContentDetailView: View {
    var body: some View {
        
        VStack (alignment: .leading){
            HStack {
                Image("markQuestion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                Text("여러분에게 성장이란 무엇인가요")
                Text(" 50 ")
                    .bold()
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(4)
            }
            .font(.title3)
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
            
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
            
            HStack {
                Text("#해시태그1")
                Text("#해시태그2")
                Text("#해시태그3")
                Text("#해시태그4")
            }
            .foregroundColor(.white)
            .background(.blue)
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
            
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
            
            Rectangle()
                .foregroundColor(.gray)
                .border(.black)
                .frame(width: .infinity, height: 10)
                
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
                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                    .background(.blue)
                    .cornerRadius(8)
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
            
            VStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .border(.black)
                    .frame(width: .infinity, height: 10)
            }
            
            VStack(alignment: .center) {
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
                    
                
                ZStack(alignment: .leading){
                    HStack(alignment: .center)  {
                        Spacer()
                        Spacer()
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: .infinity, height: 100)
                            .shadow(color: .gray, radius: 2, x: 0, y: 1)
                        // TODO: shadow -> lightGray
                        Spacer()
                        Spacer()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("비공개 답변")
                            .font(.title3)
                            .bold()
                        HStack {
                            Text("비공개율")
                            Text("63%")
                            Text("최근 답변")
                            Text("2023.03.28")
                        }
                        .font(.callout)
                        .foregroundColor(.gray)
                        Text("초인")
                    }
                    
                }
            }
            
            
            
            
        }
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
