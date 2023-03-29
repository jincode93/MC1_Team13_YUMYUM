//
//  DetailViewQuestionModel.swift
//  Team13_YUMYUM
//
//  Created by 홍승완 on 2023/03/29.
//

import Foundation

struct DetailViewQuestionModel: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let title: String
    let score: Int
    let userName: String
    let adoptionRate: Int
    let closingRate: Int
    let description: String
    let hashTagList: [String]
    let date: String
    let views: Int
    let curious: Int
    let comments: Int
    
}


extension DetailViewQuestionModel {
    static let list: [DetailViewQuestionModel] = [
        DetailViewQuestionModel(title: "제가 처음으로 팀플하게 됐는데 팀에 자아가 센 사람만 있는거 합법인가요???", score: 50, userName: "이름", adoptionRate: 100, closingRate: 100, description: "ㄹㅇ이해가 안가서 그럼;;;", hashTagList: ["해시태그1", "해시태그2", "해시태그3", "해시태그4"], date: "2023.03.25.", views: 1234, curious: 10, comments: 5),
    ]
}
