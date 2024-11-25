//
//  AddPostView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 24/11/24.
//

import SwiftUI

struct AddPostView: View {
    
    let postViewModel: PostViewModel
    
    //    @State var isPressed: Bool = true
    @State var post: String = ""
//    @State var isOffer: Bool = true
    @Binding var showModal: Bool
    
    @State var selectedType = "Offer"
    
    var body: some View {
        NavigationStack {
            
            VStack {
//                Custom buttons to choose Post type
//                Spacer()
//                HStack {
//                    Spacer()
//                    
//                    Button {
//                        isPressed = true
//                    } label: {
//                        Text("Offer")
//                            .frame(maxWidth: 84)
//                    }
//                    .buttonStyle(.borderedProminent)
//                    .tint(isPressed ? .greenDark : .greenLight)
//                    .foregroundStyle(isPressed ? .greenLight : .greenDark)
//                    .controlSize(.large)
//                    .buttonBorderShape(.capsule)
//
//                    
//                    Spacer()
//                    
//                    Button {
//                        isPressed = false
//                    } label: {
//                        Text("Request")
//                            .frame(maxWidth: 84)
//                    }
//                    .buttonStyle(.borderedProminent)
//                    .tint(isPressed ? .greenLight : .greenDark)
//                    .foregroundStyle(isPressed ? .greenDark : .greenLight)
//                    .controlSize(.large)
//                    .buttonBorderShape(.capsule)
//                    
//                    Spacer()
//                    
//                }
                
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: $post)
                        .frame(maxHeight: .infinity)
                        .foregroundColor(.black)
                        .padding()
                    
                    if post.isEmpty {
                        Text(selectedType == "Offer" ? "I can help you with..." : "I need help with...")
                            .foregroundColor(.gray)
                            .padding(.top, 24)
                            .padding(.leading, 20)
                    }
                }
            }
            .navigationTitle(selectedType == "Offer" ? "Offer" : "Request")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Cancel")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        let newPost = Post(text: post, type: selectedType, author: "Abdusamad", received: true, timestamp: "1 hour ago")
                        postViewModel.add(post: newPost)
                        showModal.toggle()
                    } label: {
                        Text("Add")
                    }
                    .disabled(self.post.isEmpty)
                }
            }
            
            .toolbarTitleMenu {
                Button {
                    selectedType = "Offer"
                } label: {
                    Text("Offer")
                    
                    if selectedType == "Offer" {
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                    
                }
                
                Button {
                    selectedType = "Request"
                } label: {
                    Text("Request")
                    
                    if selectedType == "Request" {
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                }
            }
            
        }
    }
}

#Preview {
    AddPostView(postViewModel: PostViewModel(), showModal: .constant(true))
}
