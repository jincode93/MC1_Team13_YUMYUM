//
//  DetailViewAnswerModel.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import Foundation

struct DetailViewAnswerModel: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let description: String
}


extension DetailViewAnswerModel {
    static let list: [DetailViewAnswerModel] = [
        DetailViewAnswerModel(description: "의견을 관철해도 서로 존중하는\n마음만 가지고 있다면 건강하게\n소통할 수 있는 것 같아요"),
        DetailViewAnswerModel(description: "지금까지 쌓아놓은 정보를 잘\n알고 계신 분께 피드백을 요청\n해보는 것이 좋아보입니다."),
        DetailViewAnswerModel(description: "섣부르게 결론으로 가지 않고,\n짚어야 할 지점을 의식하면 자연\n스레 결과에 도달할 수 있어요")
    ]

}
