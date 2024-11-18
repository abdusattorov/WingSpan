//
//  ReplyBubble.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 18/11/24.
//

import SwiftUI

struct ReplyBubble: View {
    
    @State var comment: Comment
    var showAuthor: Bool
    
    var body: some View {
        
        VStack {
            VStack {
                
                if showAuthor == true {
                    HStack {
                        Text(comment.author)
                            .font(.system(size: 17, weight: .bold))
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding([.leading, .trailing, .top], 20)
                }
                
                if showAuthor == true {
                    //                comment text
                    Text(comment.text)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .trailing], 20)
                        .foregroundStyle(Color.black)
                } else {
                    Text(comment.text)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .trailing, .top], 20)
                        .foregroundStyle(Color.black)
                }
                
                
                
                //                Timestamp
                HStack {
                    Text(comment.timestamp)
                        .italic()
                        .font(.caption)
                        .foregroundStyle(Color.black)
                    Spacer()
                }
                .padding([.leading, .trailing, .bottom], 20)
                .padding([.top], 1)
                
            }
            .background(Color(#colorLiteral(red: 0.9333332181, green: 0.9333333969, blue: 0.9376390576, alpha: 1)))
            .cornerRadius(15)
            .frame(width: 360)
            .shadow(color: Color(hex: 0xb3b3b3), radius: 4, x: 0, y:4)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 10)
        
    }
}

#Preview {
    ReplyBubble(comment: Comment(id: "123", text: "This is a comment", author: "Teja Dungala", timestamp: "1 hour ago"), showAuthor: true)
}
