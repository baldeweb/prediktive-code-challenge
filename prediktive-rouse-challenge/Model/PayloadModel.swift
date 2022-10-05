//
//  PayloadResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct PayloadModel: Decodable {
    let free: [AppModel]
    let premium: [AppModel]
    let groups: GroupsModel
}
