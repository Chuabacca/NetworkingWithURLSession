//
//  ContentView.swift
//  NetworkingWithURLSession
//
//  Created by Jonathan Chua on 9/8/25.
//

import SwiftUI

struct PostView: View {
    @StateObject private var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.postsWithAuthors) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("By: \(post.authorName)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(post.body)
                        .font(.body)
                        .foregroundColor(.primary)
                }
            }
        }
        .navigationTitle("Posts")
        .onAppear {
            viewModel.fetchPostData()
        }
        .padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
