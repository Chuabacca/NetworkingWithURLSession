//
//  User.swift
//  NetworkingWithURLSession
//
//  Created by Jonathan Chua on 9/8/25.
//

import Foundation

struct User: Identifiable, Decodable {
    let id: Int
    let name: String
    
    // mock data
    static let users: [User] = [
        .init(id: 1, name: "Han"),
        .init(id: 2, name: "Luke"),
    ]
}

