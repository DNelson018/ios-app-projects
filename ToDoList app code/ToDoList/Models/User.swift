//
//  User.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import Foundation

struct User: Codable {
    
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
