//
//  StoreResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct StoreResponse: Decodable {
    let status: Int?
    let payload: PayloadModel?
    let error: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(Int.self, forKey: .status) ?? 200
        self.payload = try container.decode(PayloadModel.self, forKey: .payload)
        self.error = try container.decode(String.self, forKey: .error) ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case payload = "payload"
        case error = "error"
    }
}
