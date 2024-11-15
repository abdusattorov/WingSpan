//
//  WelcomeView.swift
//  WingSpan
//
//  Created by Zahra Karimi on 15/11/24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1291008592, green: 0.3538852334, blue: 0.3169427514, alpha: 1)), Color(#colorLiteral(red: 0.8850621581, green: 0.9551602006, blue: 0.8978672028, alpha: 1))]),
                
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack{
                
                Image("Wing")
                    .resizable()
                    .frame(width: 400,height: 400)
                    .foregroundColor(Color.white)
                    .padding()
                
                
                Text("Welcome to WingSpan")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                Text("Together We Thrive, creating connection\n and kindness for all. \n Enter your name to join our community.")
                    .multilineTextAlignment(.center)
                
                
                TextField("Your name", text: $searchText)
                
                    .padding(8)
                    .background(Color(#colorLiteral(red: 0.8850622773, green: 0.9551600814, blue: 0.8935331106, alpha: 1)))
                    .frame(width: 310, height: 40)
                    .cornerRadius(20)
                
                Spacer()
                
                Button("Continue")
                {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .foregroundStyle(.white)
                .font(.system(size: 17))
                .frame(width: 310, height: 40)
                .background(Color(#colorLiteral(red: 0.1291008592, green: 0.3538852334, blue: 0.3169427514, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.bottom,50)
                
            }
        }
        
    }
}

#Preview {
    WelcomeView()
}
