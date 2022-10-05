//
//  PayloadResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct PayloadModel: Decodable {
    let free: Array<AppModel>?
    let premium: Array<AppModel>?
    let groups: GroupsModel?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.free = try container.decodeIfPresent([AppModel].self, forKey: .free)
        self.premium = try container.decodeIfPresent([AppModel].self, forKey: .premium)
        self.groups = try container.decodeIfPresent(GroupsModel.self, forKey: .groups)
    }
    
    enum CodingKeys: String, CodingKey {
        case free = "free"
        case premium = "premium"
        case groups = "groups"
    }
}
