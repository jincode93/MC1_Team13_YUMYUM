//
//  DetailViewAnswerModel.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import Foundation

struct DetailViewAnswerModel: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let userName: String
    let tier: String
    let imageName: String
    let description: String
    let ago: Int
}

extension DetailViewAnswerModel {
    static let list: [DetailViewAnswerModel] = [
        DetailViewAnswerModel(userName: "YumYum", tier: "우주신", imageName: "", description: " 아.... 그럴 수 있죠.ㅎ 자기주장이 강한 분들만 모였나보네요.ㅋ\n\n 저희가 바로 그런 경우였습니다.ㅋㅋㅋ\n\n 저희같은 경우에는 처음에 팀만의 규칙을 정했는데요. '이상한 질문 해도 꼽주지 않기' '아닌 것 같은 건 아니라고 하기' 등 발언권의 자유를 보장하는 항목을 많이 넣었었죠.ㅋㅋ\n\n 그런데 그렇게 정하지 않아도 될 정도로 다양한 의견이 나오더라고요. 그러다보니 방향이 안 잡히고 제각각 흩어지는 것 같았는데, 나중에는 그게 하나로 모이는 시기도 있더군요. \n\n 지치지 않고 끊임없이 피드백하고 소통하는것만이 답인듯합니다.\n\n 질문자분도 첫 팀플이라 혼란스러우시겠지만 화이팅입니다!ㅎㅎ 열심히 작성했으니 채택좀ㅎ", ago: 10),
        
    ]

}
