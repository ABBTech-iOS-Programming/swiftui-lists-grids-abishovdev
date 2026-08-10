//
//  AuthorListView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct AuthorListView: View {
    let authors = Author.authors
    var body: some View {
        ScrollView(){
            LazyVStack(spacing: 32){
                ForEach(authors){author in
                        AuthorInfoCard(author: author)
                    
                }
            }
        }
    }
}

#Preview {
    AuthorListView()
}
