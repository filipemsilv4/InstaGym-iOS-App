//
//  User.swift
//  InstaGym
//
//  Created by alexandre pereira on 21/11/23.
//

import Foundation
struct User: Identifiable, Codable {
    
    let id: String
    let fullName: String
    let email: String
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User{
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Ale", email: "Ale@gmail.com")
}
