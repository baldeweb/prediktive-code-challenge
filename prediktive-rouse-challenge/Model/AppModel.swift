//
//  AppResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Trabalho on 04/10/22.
//

import Foundation

struct AppResponse: Decodable {
    let id: String?
    let name: String?
    let description: String?
    let isPremium: Bool?
    let appStoreProductId: String?
    let leadingImageUrl: String?
    let backgroundImageUrl: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        description = try container.decode(String.self, forKey: .description)
        isPremium = try container.decode(Bool.self, forKey: .isPremium)
        appStoreProductId = try container.decode(String.self, forKey: .appStoreProductId)
        leadingImageUrl = try container.decode(String.self, forKey: .leadingImageUrl)
        backgroundImageUrl = try container.decode(String.self, forKey: .backgroundImageUrl)
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case isPremium = "isPremium"
        case appStoreProductId = "appStoreProductId"
        case leadingImageUrl = "leadingImageUrl"
        case backgroundImageUrl = "backgroundImageUrl"
    }
}
