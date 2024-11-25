//
//  AddPostView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 24/11/24.
//

import SwiftUI

struct AddPostView: View {
    
    @State var post: String = ""
//    @State var isPressed: Bool = true
    @State var isOffer: Bool = true
    @Binding var showModal: Bool
    
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
                        Text(isOffer ? "I can help you with..." : "I need help with...")
                            .foregroundColor(.gray)
                            .padding(.top, 24)
                            .padding(.leading, 20)
                    }
                }
            }
            .navigationTitle(isOffer ? "Offer" : "Request")
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
                        showModal.toggle()
                    } label: {
                        Text("Add")
                    }
                    .disabled(self.post.isEmpty)
                }
            }
            .toolbarTitleMenu {
                Button {
                    isOffer = true
                } label: {
                    Text("Offer")
                    
                    if isOffer {
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                    
                }
                
                Button {
                    isOffer = false
                } label: {
                    Text("Request")
                    
                    if !isOffer {
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                }

            }
        }
    }
}

#Preview {
    AddPostView(showModal: .constant(true))
}
