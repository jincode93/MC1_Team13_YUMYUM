//
//  ContributorModel.swift
//  
//
//  Created by 홍승완 on 2023/03/29.
//

import Foundation

import Foundation

struct ContributorModel: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let name: String
    let tier: String
    let answers: Int
}


extension ContributorModel {
    static let list: [ContributorModel] = [
        ContributorModel(imageName: "markQuestion", name: "데이지", tier: "열매", answers: 74),
        ContributorModel(imageName: "GameCard1", name: "섭", tier: "열매", answers: 50),
        ContributorModel(imageName: "markQuestion", name: "데이지", tier: "열매", answers: 74),
        ContributorModel(imageName: "GameCard1", name: "섭", tier: "열매", answers: 50),
    ]
}
