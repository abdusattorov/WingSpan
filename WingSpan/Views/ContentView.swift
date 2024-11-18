//
//  ContentView.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Posts", systemImage: "bubble.left.and.text.bubble.right") {
                PostsView()
            }
            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
        }
        .foregroundStyle(
            Color.greenDark
        )
    }
}

#Preview {
    ContentView()
}
