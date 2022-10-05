//
//  GroupsModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct GroupsModel: Decodable {
    let carousel: ProductModel
    let promotionOne: ProductModel
    let footerPromotion: ProductModel
    
    enum CodingKeys: String, CodingKey {
        case carousel = "carousel"
        case promotionOne = "promotion_1"
        case footerPromotion = "footer_promotion"
    }
}
