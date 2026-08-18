//
//  AuthorListView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct AuthorListView: View {
    let authors : [Author]
    var body: some View {
        ScrollView(){
            if authors.isEmpty {
                Text("No authors found")
                    .font(.system(size: 16))
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 60)
            }
            else{
                LazyVStack(spacing: 32){
                    ForEach(authors){author in
                        NavigationLink(destination: AuthorDetail(author: author)) {
                            AuthorInfoCard(author: author)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            
        }
    }
}

#Preview {
    AuthorListView(authors: [Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer",profession: .poets,products: [Book.books.first].compactMap { $0 })])
}
