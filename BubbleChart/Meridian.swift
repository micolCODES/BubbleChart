//
//  Meridian.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import Foundation

struct Meridian: Codable, Identifiable {
    let id: String
    let yinYang: String
    let points: [Acupoint]
}
