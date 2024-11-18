//
//  AgreementView.swift
//  WingSpan
//
//  Created by samin mirali on 15/11/24.
//

import SwiftUI

struct AgreementView: View {
    var body: some View {
        
        VStack {
            
            Text("Before you post")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.1291011274, green: 0.3538852036, blue: 0.3126211762, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,64)
            
            Text("Please read and agree to the following guidelines.")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,10)
            
            Text("Be clear and polite")
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.1291011274, green: 0.3538852036, blue: 0.3126211762, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Make what you offer or request clear to everyone and be kind and polite to other members. Always!")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,10)
            
            Text("No money involved")
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.1291011274, green: 0.3538852036, blue: 0.3126211762, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("WingSpan is all about kindness and altruistic actions. Please don’t offer or ask for money!")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)    .padding(.bottom,10)
            
            Text("Don't ghost ")
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.1291011274, green: 0.3538852036, blue: 0.3126211762, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Yes, life can get busy and plans can change but PLEASE, don't ghost someone who needs your help or offered to help you!")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)    .padding(.bottom,10)
            
            Text("Don't promote your business")
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.1291011274, green: 0.3538852036, blue: 0.3126211762, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("We are not allowing paid ads in the platform to insure a healthy and delightful experience.So we won't accept free ads neither.")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button("Yes, I  agree") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .font(.headline)
            .foregroundColor(Color(#colorLiteral(red: 0.1291008592, green: 0.3538852334, blue: 0.3169427514, alpha: 1)))
            .frame(maxWidth: .infinity)
            .background(Color(#colorLiteral(red: 0.8772138953, green: 0.9473162293, blue: 0.8856884837, alpha: 1)))
            .cornerRadius(50)
            
        }
        .padding([.leading, .trailing], 16)
        
    }
}

#Preview {
    AgreementView()
}
