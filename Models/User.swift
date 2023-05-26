//
//  User.swift
//  ToDoList
//
//  Created by Станислав Шульц on 22.05.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
