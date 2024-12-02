//
//  ContentView.swift
//  ChallengeTwo
//
//  Created by Abdusamad Abdusattorov on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var userVM = UserViewModel()
    
    var body: some View {
        TabView {
            Tab("Wings", systemImage: "bubble.left.and.text.bubble.right") {
                PostsView(userVM: userVM)
            }
            Tab("My Posts", systemImage: "person.fill") {
                ProfileView(userVM: userVM)
            }
        }
    }
}

#Preview {
    ContentView()
}
