//
//  PostBubble.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 13/11/24.
//

import SwiftUI

struct PostBubble: View {
    
    var postVM = PostViewModel()
    var post: Post
    var showAuthor: Bool
    var action : () -> Void
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                
                //                Name and request type
                HStack {
                    
                    if showAuthor == true {
                        Text(post.author)
                            .font(.system(size: 17, weight: .bold))
                        
                        Spacer()
                        Text(post.type)
                            .padding([.leading, .trailing], 20)
                            .padding([.top, .bottom], 5)
                            .font(.system(size: 15))
                            .background(Color.grayLight)
                            .foregroundStyle(Color.greenDark)
                            .cornerRadius(30)
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing, .top], 20)
                
                //                Post text
                Text(post.text)
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .trailing], 20)
                
                //                Timestamp and reply count
                HStack {
                    Text(post.timestamp)
                        .italic()
                        .font(.caption)
                    Spacer()
                    Button {
                        action()
                    } label: {
                        Text(.init(systemName: "bubble.fill"))
                            .font(.system(size: 15))
                            .foregroundStyle(post.type == "Offer" ?
                                             Color.greenLight : Color.greenDark)
                    }
            
                    Text("7")
                        .font(.caption)
                        .italic()
                }
                .padding([.leading, .trailing, .bottom], 20)
                .padding([.top], 1)
                
            }
            .background(post.type == "Offer" ?
                        Color.greenDark : Color.greenLight
            )
            .foregroundStyle(post.type == "Offer" ?
                             Color.white : Color.black
            )
            .cornerRadius(15)
            .shadow(color: Color(hex: 0xb3b3b3), radius: 4, x: 0, y:4)
            
        }
        .padding(.bottom, 10)
        .padding([.leading, .trailing], 16)
//        .sheet(isPresented: $isPresented, content: {
//            CommentsPanel(post: post, isPresented: $isPresented)
//        })
//        .overlay(
//            Group {
               
//            }
//        )
    }
}

//#Preview {
//    PostBubble(post: Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Abdusamad", received: false, timestamp: "1 hour ago"), showAuthor: true)
//    PostBubble(post: Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Request", author: "Abdusamad", received: false, timestamp: "1 hour ago"), showAuthor: true)
//}
