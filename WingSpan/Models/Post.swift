//
//  Post.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 13/11/24.
//

import Foundation

struct Post: Identifiable, Codable {
    var id: UUID = UUID()
    var text: String
    var type: String
    var author: String
    var received: Bool
    var timestamp: String
}
