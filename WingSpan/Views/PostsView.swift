//
//  PostsView.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 11/11/24.
//

import SwiftUI

struct PostsView: View {
    
    var postVM = PostViewModel()
    @State private var searchText = ""
    @State var isPresented: Bool = false
    @State private var selectedPost: Post?
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                VStack {
                    
                    ScrollView {
                        ForEach(postVM.posts) {post in
                            PostBubble(post: post, showAuthor: true, action: {
                                selectedPost = post
                                isPresented.toggle()
                            })
                        }
                    }
                }
                .navigationTitle("Wings")
                .searchable(text: $searchText)
                .sheet(isPresented: $showModal, content: {
                    AddPostView(postViewModel: postVM, showModal: $showModal)
                })
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            showModal.toggle()
                        } label: {
                            Text("Add Post")
                            Image(systemName: "plus.app.fill")
                        }
                    }
                }
                if let post = selectedPost, isPresented {
                    CommentsPanel(post: post, isPresented: $isPresented)
                        .transition(.move(edge: .bottom))
                }
            }
            //            .padding([.leading, .trailing], 16)
        }
    }
}

#Preview {
    PostsView()
}
