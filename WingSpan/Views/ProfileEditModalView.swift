//
//  ProfileEditModalView.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 25/11/24.
//

import SwiftUI

struct ProfileEditModalView: View {
    
    var userViewModel: UserViewModel
    @State var name: String = ""
    @State var surname: String = ""
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section("Full name") {
                        TextField("Name:", text: $name)
                            .onAppear {
                                self.name = userViewModel.user.name
                                self.surname = userViewModel.user.surname
                            }
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
                        userViewModel.update(name: name, surname: surname)
                        showModal.toggle()
                    } label: {
                        Text("Save")
                    }
                    .disabled(name == userViewModel.user.name && surname == userViewModel.user.surname)
                }
            }
            
        }
    }
}

#Preview {
    ProfileEditModalView(userViewModel: UserViewModel(), showModal: .constant(true))
}
