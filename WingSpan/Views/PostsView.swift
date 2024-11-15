//
//  PostsView.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 11/11/24.
//

import SwiftUI

struct PostsView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                ScrollView {
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Zahra", received: false, timestamp: "1 hour ago"))
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Request", author: "Samin", received: false, timestamp: "1 hour ago"))
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Chiara", received: false, timestamp: "1 hour ago"))
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Request", author: "Marwa", received: false, timestamp: "1 hour ago"))
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Teja", received: false, timestamp: "1 hour ago"))
                    PostBubble(post: Post(id: "123", text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Abdusamad", received: false, timestamp: "1 hour ago"))
                }
            }
            .navigationTitle("Posts")
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //                        showModal.toggle()
                    } label: {
                        Text("Add Post")
                        Image(systemName: "plus.app.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    PostsView()
}
