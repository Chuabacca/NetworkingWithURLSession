//
//  PostViewModel.swift
//  NetworkingWithURLSession
//
//  Created by Jonathan Chua on 9/8/25.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var postsWithAuthors: [PostWithAuthor] = []
    
    // presentation model
    struct PostWithAuthor: Identifiable {
        var id: Int
        var title: String
        var body: String
        var authorName: String
    }
    
    func fetchPostData() {
        let posts = Post.posts
        let users = User.users
        
        var combined: [PostWithAuthor] = []
        for post in posts {
            if let author = users.first(where: { $0.id == post.userId }) {
                combined.append(.init(
                    id: post.id,
                    title: post.title,
                    body: post.body,
                    authorName: author.name
                ))
            }
        }
        
        self.postsWithAuthors = combined
    }
}
