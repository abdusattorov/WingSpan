//
//  ProfileView.swift
//  WingSpan
//
//  Created by samin mirali on 14/11/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedSegment = "Offers"
    let segments = ["Offers", "Request" , "Replies"]
    
    var body: some View {
        VStack{
            Text("Profile")
                .bold()
                .font(.title)
                .padding(.trailing,270)
            
            Divider()
                .padding()
            ZStack{
              RoundedRectangle(cornerRadius: 15)
                    .frame(width: 350,height: 80)
                    .foregroundColor(Color(#colorLiteral(red: 0.9333332181, green: 0.9333333969, blue: 0.9376390576, alpha: 1)))
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(#colorLiteral(red: 0.1291008592, green: 0.3538852334, blue: 0.3169427514, alpha: 1)))
                    Text("Amelia Sinclair")
                        .font(.headline)
                        .bold()
                        .padding(.trailing,50)
                    Button(action:{
                    }) {Image(systemName: "pencil.circle")
                            .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.1291008592, green: 0.3538852334, blue: 0.3169427514, alpha: 1)))
                    }
                    .padding(.leading,70)
                }
          }
            Picker("Options",selection: $selectedSegment){
                ForEach(segments,id: \.self){ segment in
                Text(segment)
            }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
          /*  if selectedSegment == "Offers" {
                            Text("Offers Content")
                        } else if selectedSegment == "Requests" {
                            Text("Requests Content")
                        } else if selectedSegment == "Replies" {
                            Text("Replies Content")
                      } */
                         
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 360,height: 90)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                Text("I want to take you for a coffee")
                    .padding(.trailing,80)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 360,height: 90)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                Text("Hey everyone! I brought some snacks to share, feel\n free to take one of them. They’re in the lab 2 ! ")
                    .font(.subheadline)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 360,height: 90)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                Text("I can speak Spanish and english perfectly. ")
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 360,height: 90)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                Text("Today I want to go eat sushi , but no one wants\n to come with me, if you want you can join me. ")
                    .font(.subheadline)
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
