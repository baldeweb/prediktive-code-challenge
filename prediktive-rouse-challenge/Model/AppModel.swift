//
//  AppResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct AppModel: Decodable {
    let id: String
    let name: String
    let description: String
    let isPremium: Bool
    var appStoreProductId: String?
    let leadingImageUrl: String
    var backgroundImageUrl: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(String.self, forKey: .id) ?? ""
        name = try container.decodeIfPresent(String.self, forKey: .name) ?? ""
        description = try container.decodeIfPresent(String.self, forKey: .description) ?? ""
        isPremium = try container.decodeIfPresent(Bool.self, forKey: .isPremium) ?? false
        appStoreProductId = try container.decodeIfPresent(String.self, forKey: .appStoreProductId) ?? ""
        leadingImageUrl = try container.decodeIfPresent(String.self, forKey: .leadingImageUrl) ?? ""
        backgroundImageUrl = try container.decodeIfPresent(String.self, forKey: .backgroundImageUrl) ?? ""
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
