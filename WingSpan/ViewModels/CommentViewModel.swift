//
//  CommentViewModel.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 19/11/24.
//

import Foundation

@Observable
class CommentViewModel {
    
    var comments = [
        Comment(text: "This is a comment", author: "Teja", timestamp: "1 hour ago"),
        Comment(text: "This is a comment", author: "Abdusamad", timestamp: "1 hour ago"),
        Comment(text: "This is a comment", author: "Zahra", timestamp: "1 hour ago"),
        Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"),
        Comment(text: "This is a comment", author: "Chiara", timestamp: "1 hour ago"),
        Comment(text: "This is a comment", author: "Marwa", timestamp: "1 hour ago")
    ]
    
}
