//
//  DetailViewQuestionModel.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import Foundation

struct DetailViewQuestionModel: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let description: String
    let hashTagList: [String]

    
}



extension DetailViewQuestionModel {
    static let list: [DetailViewQuestionModel] = [

        DetailViewQuestionModel(description: "제가 처음으로 팀플을 하게\n됐는데 팀에 의견 강한 사람만\n있는거 합법인가요???", hashTagList: ["자아비대", "6인6색", "파국"]),
        DetailViewQuestionModel(description: "프젝이 산으로 가는 것 같은데\n이런 경우에는 어떻게 해야할\n까요? ㅜㅜ", hashTagList: ["자아비대", "6인6색", "파국"]),
        DetailViewQuestionModel(description: "정말 좋은 솔루션을 도출했는데,\n결과물이 되기까지 어떻게\n푸쉬할 수 있을까요?", hashTagList: ["자아비대", "6인6색", "파국"])
    ]
}
