//
//  MyRequestsView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 18/11/24.
//

import SwiftUI

struct MyRequestsView: View {
    var body: some View {
        
        ScrollView {
            PostBubble(post: Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Request", author: "Abdusamad", received: false, timestamp: "1 hour ago"), showAuthor: false, action: {})
        }
        
        Spacer()
    }
}

#Preview {
    MyRequestsView()
}
