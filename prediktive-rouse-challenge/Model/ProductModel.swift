//
//  CarouselModel.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct ProductModel: Decodable {
    var id: String?
    var type: String?
    var promos: [PromoModel]?
}
