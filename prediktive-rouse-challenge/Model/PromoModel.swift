//
//  PromoModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct PromoModel: Decodable {
    let id: String?
    let type: String?
    let imageUrl: String?
    let appStoreProductId: String?
    let categoryId: String?
    let groupId: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        type = try container.decode(String.self, forKey: .type)
        imageUrl = try container.decode(String.self, forKey: .imageUrl)
        appStoreProductId = try container.decode(String.self, forKey: .appStoreProductId)
        categoryId = try container.decode(String.self, forKey: .categoryId)
        groupId = try container.decode(String.self, forKey: .groupId)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case imageUrl = "imageUrl"
        case appStoreProductId = "appStoreProductId"
        case categoryId = "categoryId"
        case groupId = "groupId"
    }
}
