//
//  ProfileView.swift
//  WingSpan
//
//  Created by samin mirali on 14/11/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedSegment = "Offers"
    let segments = ["Offers", "Request", "Replies"]
    
    @State var selection = 0
    
    var body: some View {
        NavigationStack {
            VStack{
                
                /*
                 HStack {
                 Image(systemName: "person")
                 .resizable()
                 .frame(width: 25, height: 25)
                 .foregroundStyle(Color.greenDark)
                 .padding([.leading, .trailing], 6)
                 Text("Teja Dungala")
                 .bold()
                 
                 Spacer()
                 
                 Button {
                 //                        showModal.toggle()
                 } label: {
                 Image(systemName: "pencil")
                 .imageScale(.large)
                 .foregroundColor(Color.greenDark)
                 }
                 .buttonStyle(.bordered)
                 .buttonBorderShape(.roundedRectangle)
                 .cornerRadius(50)
                 }
                 .padding()
                 .background(Color(#colorLiteral(red: 0.9333332181, green: 0.9333333969, blue: 0.9376390576, alpha: 1)))
                 .foregroundStyle(Color.black)
                 .cornerRadius(15)
                 .frame(width: 360)
                 */
                
                HStack {
                    Image(systemName: "person.fill")
                        .imageScale(.large)
                        .padding(8)
                        .foregroundStyle(Color.greenDark)
                    //                        .background(Color.greenLight)
                        .cornerRadius(50)
                    Text("Teja Dungala")
                        .bold()
                    Spacer()
                    Button {
                        //                        showModal.toggle()
                    } label: {
                        Image(systemName: "pencil")
                            .imageScale(.large)
                            .padding(8)
                        //                            .background(Color.greenLight)
                            .foregroundColor(Color.greenDark)
                            .background(Color(#colorLiteral(red: 0.9333332181, green: 0.9333333969, blue: 0.9376390576, alpha: 1)))
                            .cornerRadius(50)
                    }
                }
                .padding()
                .background(Color.white)
                .foregroundStyle(Color.black)
                .cornerRadius(15)
                .frame(width: 360)
                .shadow(color: Color(hex: 0xb3b3b3), radius: 4, x: 0, y:4)
                
                //                Old picker by Samin
                //                Picker("Options", selection: $selectedSegment){
                //                    ForEach(segments,id: \.self){ segment in
                //                        Text(segment)
                //                    }
                //                }
                //                .pickerStyle(SegmentedPickerStyle())
                //                .padding()
                
                Picker(selection: $selection, label: Text("test")) {
                    Text("Offers").tag(0)
                    Text("Requests").tag(1)
                    Text("Replies").tag(2)
                }
                .pickerStyle(.segmented)
                .padding()
                
                switch selection {
                case 0:
                    MyOffersView()
                case 1:
                    MyRequestsView()
                case 2:
                    MyRepliesView()
                default:
                    MyOffersView()
                }
                
                //                ZStack{
                //                    RoundedRectangle(cornerRadius: 15)
                //                        .frame(width: 360,height: 90)
                //                        .foregroundColor(.white)
                //                        .shadow(radius: 5)
                //                    Text("I want to take you for a coffee")
                //                        .padding(.trailing,80)
                //                }
                
            }
            .navigationTitle("My Posts")
        }
    }
}

#Preview {
    ProfileView()
}
