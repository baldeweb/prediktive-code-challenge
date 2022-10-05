//
//  StoreResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct StoreResponse: Decodable {
    let status: Int
    let payload: PayloadModel
    var error: String?
}
