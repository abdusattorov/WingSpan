//
//  CommentsPanel.swift
//  WingSpan
//
//  Created by Chiara Improta on 11/11/24.
//

import SwiftUI

struct CommentsPanel: View {
    var post: Post
    @Binding var isPresented: Bool
    @State private var newComment: String = ""
    @State private var newReply: String = ""  // Nuovo stato per la risposta
    @State private var comments: [(author: String, text: String, timestamp: String, replies: [String])] = [
        ("Alice", "This is a great post! I love it!", "1 hour ago", []),  // Rimosso "Thank you, Alice"
        ("Bob", "I have the same question! Can someone help me with Firebase?", "47 minutes ago", []),
        ("Charlie", "Thanks for sharing, this is exactly what I needed.", "3 days ago", [])
    ]
    
    // Funzione per calcolare la durata del commento
    func timeAgo(from timestamp: String) -> String {
        if timestamp.contains("hour") {
            return "1h"
        } else if timestamp.contains("minute") {
            return "47m"
        } else if timestamp.contains("day") {
            return "3d"
        } else {
            return "Just now"
        }
    }
    
    var body: some View {
        VStack {
            
            // Header del pannello
            HStack {
                Text("Comments for \(post.author)'s post")
                    .font(.title2)
                    .bold()
                    .padding()
                Spacer()
                Button(action: {
                    isPresented = false // Nascondi il pannello
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .padding()
                }
            }
            .background(Color.greenDark)
            .foregroundColor(.white)
            
            // Lista dei commenti
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(comments.indices, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 5) {
                            // Nome dell'autore e durata
                            HStack {
                                Text(comments[index].author)
                                    .font(.system(size: 17, weight: .semibold)) // Nome in grandezza 17
                                    .foregroundColor(.black)
                                
                                Text(timeAgo(from: comments[index].timestamp)) // Durata accanto al nome
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(hex: 0x727070)) // Colore orario grigio scuro
                            }
                            
                            // Testo del commento in nero e grandezza 14
                            Text(comments[index].text)
                                .font(.system(size: 14, weight: .regular)) // Testo commento in grandezza 14
                                .foregroundColor(.black)
                            
                            // Risposte
                            ForEach(comments[index].replies, id: \.self) { reply in
                                Text("    \(reply)") // Risposta con indentazione
                                    .font(.system(size: 14, weight: .regular)) // Risposte in grandezza 14
                                    .foregroundColor(.blue)
                            }
                            
                            // Bottone per rispondere
                            Button(action: {
                                newReply = ""  // Reset del campo di risposta
                            }) {
                                Text("Reply")
                                    .font(.system(size: 12)) // "Reply" in grandezza 12
                                    .foregroundColor(Color(hex: 0x727070)) // Colore "Reply" grigio scuro
                            }
                            
                            // Input per la risposta
                            if !newReply.isEmpty {
                                TextField("Write a reply...", text: $newReply)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding([.leading, .trailing])
                                Button(action: {
                                    if !newReply.isEmpty {
                                        comments[index].replies.append(newReply) // Aggiungi la risposta
                                        newReply = "" // Reset del campo di input
                                    }
                                }) {
                                    Image(systemName: "arrow.up.circle") // Uso della versione non fill
                                        .font(.title)
                                        .foregroundColor(.greenDark) // Colore arancione scuro
                                }
                            }
                            
                            Divider()
                                .padding(.vertical, 5)
                        }
                        .padding([.leading, .trailing])
                    }
                }
            }
            .frame(maxHeight: 250)
            
            // Sezione per aggiungere un nuovo commento
            HStack {
                ZStack {
                    TextField("Add a comment...", text: $newComment)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding([.leading, .trailing])
                    
                    // Mostra l'icona di invio solo se il campo di testo non è vuoto
                    if !newComment.isEmpty {
                        HStack {
                            Spacer()
                            Button(action: {
                                if !newComment.isEmpty {
                                    comments.append(("You", newComment, "Just now", [])) // Aggiungi un nuovo commento
                                    newComment = "" // Resetta il campo di input
                                }
                            }) {
                                Image(systemName: "arrow.up.circle") // Uso della versione non fill
                                    .font(.title)
                                    .foregroundColor(.greenDark) // Colore arancione scuro
                            }
                        }
                        .padding(.trailing, 10) // Distanza dal bordo destro
                    }
                }
            }
            .padding([.bottom, .leading, .trailing])
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .frame(maxHeight: .infinity)
        .transition(.move(edge: .bottom)) // Animazione di entrata dal basso
    }
}

#Preview {
    CommentsPanel(post: Post(text: "Hello, I need help with my project, can anyone teach me how to use Firebase to create a chat app backend? Thank you!", type: "Offer", author: "Zahra", received: false, timestamp: "1 hour ago"), isPresented: .constant(true))
}

