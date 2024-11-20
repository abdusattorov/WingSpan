//
//  PostViewModel.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 19/11/24.
//

import Foundation

@Observable
class PostViewModel {
    
    var posts = [
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Offer", author: "Abdusamad", received: true, timestamp: "1 hour ago"),
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Request", author: "Marwa", received: true, timestamp: "1 hour ago"),
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Offer", author: "Teja", received: true, timestamp: "1 hour ago"),
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Request", author: "Chiara", received: true, timestamp: "1 hour ago"),
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Offer", author: "Zahra", received: true, timestamp: "1 hour ago"),
        Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!",
             type: "Request", author: "Samin", received: true, timestamp: "1 hour ago")
    ]
    
}
