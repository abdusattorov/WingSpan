//
//  User.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 26/11/24.
//

import Foundation

struct User: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var surname: String
}
