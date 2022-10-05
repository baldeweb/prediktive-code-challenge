//
//  GroupsModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct GroupsModel: Decodable {
    let carousel: ProductModel?
    let promotionOne: ProductModel?
    let footerPromotion: ProductModel?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carousel = try container.decode(ProductModel.self, forKey: .carousel)
        self.promotionOne = try container.decode(ProductModel.self, forKey: .promotionOne)
        self.footerPromotion = try container.decode(ProductModel.self, forKey: .footerPromotion)
    }
    
    enum CodingKeys: String, CodingKey {
        case carousel = "carousel"
        case promotionOne = "promotion_1"
        case footerPromotion = "footer_promotion"
    }
}
