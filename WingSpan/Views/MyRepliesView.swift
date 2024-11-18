//
//  MyRepliesView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 18/11/24.
//

import SwiftUI

struct MyRepliesView: View {
    
    var body: some View {
        
        ScrollView {
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Teja Dungala", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
        }
        
        Spacer()
    }
}

#Preview {
    MyRepliesView()
}
