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
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Teja", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
            ReplyBubble(comment: Comment(text: "This is a comment", author: "Samin", timestamp: "1 hour ago"), showAuthor: false)
        }
        
        Spacer()
    }
}

#Preview {
    MyRepliesView()
}
