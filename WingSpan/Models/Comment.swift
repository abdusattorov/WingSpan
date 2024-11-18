//
//  Comment.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 18/11/24.
//

import Foundation

struct Comment: Identifiable, Codable {
    var id: String
    var text: String
    var author: String
    var timestamp: String
}
