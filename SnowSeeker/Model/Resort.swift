//
//  Resort.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/24.
//

import Foundation

struct Resort: Codable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
}