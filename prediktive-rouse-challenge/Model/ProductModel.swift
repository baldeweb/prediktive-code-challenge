//
//  CarouselModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct ProductModel: Decodable {
    let id: String?
    let type: String?
    let promos: Array<PromoModel>?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id) ?? ""
        self.type = try container.decode(String.self, forKey: .type) ?? ""
        self.promos = try container.decode(Array.self, forKey: .promos) ?? Array()
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case promos = "promos"
    }
}
