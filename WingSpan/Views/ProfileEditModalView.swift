//
//  ProfileEditModalView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 25/11/24.
//

import SwiftUI

struct ProfileEditModalView: View {
    
    @State var name: String = ""
    @State var surname: String = ""
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section("Full name") {
                        TextField("Name:", text: $name)
                        TextField("Surname:", text: $surname)
                    }
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Cancel")
                    }
                })
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Save")
                    }
                    .disabled(name.isEmpty || surname.isEmpty)
                }
            }
            
        }
    }
}

#Preview {
    ProfileEditModalView(showModal: .constant(true))
}
