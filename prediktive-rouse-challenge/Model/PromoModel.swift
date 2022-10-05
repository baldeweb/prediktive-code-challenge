//
//  PromoModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct PromoModel: Decodable {
    var id: String?
    var type: String?
    var imageUrl: String?
    var appStoreProductId: String?
    var categoryId: String?
    var groupId: String?
}
