//
//  UserViewModel.swift
//  WingSpan
//
//  Created by Abdusamad Abdusattorov on 26/11/24.
//

import Foundation

@Observable
class UserViewModel {
    
    var user = User(name: "Name", surname: "Surname")
    
    func update(name: String, surname: String) {
        self.user = User(name: name, surname: surname)
    }
}
