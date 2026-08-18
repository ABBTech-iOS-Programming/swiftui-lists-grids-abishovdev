//
//  AuthorCarouselView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct AuthorCarouselView: View {
    let authors = Author.authors
    @State private var showAll = false
    var body: some View {
        TitleView(title: "Authors", btnTitle: "See all"){
            showAll = true
        }
        
        ScrollView(.horizontal,showsIndicators: false){
            LazyHStack(spacing:20){
                ForEach(authors){ author in
                    NavigationLink(value: author) {
                        AuthorCard(author: author)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal,24)
        .navigationDestination(isPresented: $showAll){
            AuthorsView()
        }
    }
}

#Preview {
    AuthorCarouselView()
}
