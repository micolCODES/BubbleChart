//
//  Acupoint.swift
//  BubbleChart
//
//  Created by Micol on 20.09.23.
//

import Foundation

struct Acupoint: Codable, Identifiable {
    let id: String
    let name: String
    let level: Int?
    let element: String
    let description: String
}
