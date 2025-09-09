//
//  Post.swift
//  NetworkingWithURLSession
//
//  Created by Jonathan Chua on 9/8/25.
//

import Foundation

struct Post: Identifiable, Decodable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
    
    // mock data
    static let posts: [Post] = [
        .init(id: 1, title: "Scoundrel", body: "Never tell me the odds.", userId: 1),
        .init(id: 2, title: "Farm boy", body: "I'm Luke Skywalker. I'm here to rescue you.", userId: 2),
    ]
}

