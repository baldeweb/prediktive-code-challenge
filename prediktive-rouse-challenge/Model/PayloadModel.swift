//
//  PayloadResponse.swift
//  prediktive-rouse-challenge
//
//  Created by Trabalho on 04/10/22.
//

import Foundation

struct PayloadResponse: Decodable {
    let free: Array<AppResponse>
    let premium: Array<AppResponse>
    let groups: AnyObject
}
