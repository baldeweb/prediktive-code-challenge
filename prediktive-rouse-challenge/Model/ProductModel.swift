//
//  CarouselModel.swift
//  prediktive-rouse-challenge
//
//  Created by Trabalho on 04/10/22.
//

import Foundation

struct CarouselModel: Decodable {
    let id: String?
    let type: String?
    let promos: Array<PromoModel>?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        type = try container.decode(String.self, forKey: .type)
        promos = try container.decode(Array.self, forKey: .promos)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case promos = "promos"
    }
}
