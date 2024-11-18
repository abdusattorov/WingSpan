//
//  MyOffersView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 18/11/24.
//

import SwiftUI

struct MyOffersView: View {
    var body: some View {
        
        ScrollView {
            PostBubble(post: Post(id: "123", text: "I want to take you for a coffee", type: "Offer", author: "Abdusamad", received: false, timestamp: "1 hour ago"), showAuthor: false)
        }
        
        Spacer()
    }
}

#Preview {
    MyOffersView()
}
